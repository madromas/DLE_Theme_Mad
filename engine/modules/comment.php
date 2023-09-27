<?php
/*
=====================================================
 Comments shortnews  DLE v2.0
-----------------------------------------------------
 Автор: s@d@n
 E-mail: sadan.abiy@gmail.com
-----------------------------------------------------
 Copyright (c) 2015 s@d@n
=====================================================
 Данный код защищен авторскими правами
=====================================================
 Файл: comment.php
-----------------------------------------------------
 Назначение: Вывод комментариев в коротких новостях
=====================================================
*/

if (!defined('DATALIFEENGINE')) die ("Hacking attempt!");

$cfg = array(
	'newsId' => !empty($news_id) ? (int) $news_id : false,
	'limit'	=> !empty($limit) ? $limit : '3',
);

$comment = false;

$comment = dle_cache( "comm_" . $news_id, $config['skin'], true );

$error = true;

if ($cfg['newsId']) {

    $sql = $db->query("SELECT c.id, c.post_id, c.user_id, c.date, c.autor, c.email, c.text, c.ip, c.rating, c.vote_num, u.email, u.name, u.news_num, u.comm_num, u.user_group, u.lastdate, u.reg_date, u.signature, u.foto, u.fullname, u.land, u.xfields  FROM " . PREFIX . "_comments AS c, " . USERPREFIX . "_users AS u WHERE c.post_id =  '". $cfg['newsId'] . "' AND u.name = c.autor ORDER BY c.id DESC LIMIT ". $cfg['limit'] . "");
	
    $tpl->load_template('comment.tpl');
	
	$comment = "";

    while($row = $db->get_row($sql)) {
	  
	    $error = false;
	
	    if( $config['allow_alt_url'] ) {
		    $go_page = $config['http_home_url'] . "user/" . urlencode( $row['name'] ) . "/";
		} else {
		    $go_page = "$PHP_SELF?subaction=userinfo&user=" . urlencode( $row['name'] );
		}
		$go_page = "onclick=\"ShowProfile('" . urlencode( $row['name'] ) . "', '" . htmlspecialchars( $go_page, ENT_QUOTES, $config['charset'] ) . "', '" . $user_group[$member_id['user_group']]['admin_editusers'] . "'); return false;\"";
		if( $config['allow_alt_url'] ) $tpl->set( '{author}', "<a {$go_page} href=\"" . $config['http_home_url'] . "user/" . urlencode( $row['name'] ) . "/\">" . $row['name'] . "</a>" );
		else $tpl->set( '{author}', "<a {$go_page} href=\"$PHP_SELF?subaction=userinfo&amp;user=" . urlencode( $row['name'] ) . "\">" . $row['name'] . "</a>" );
		
		$tpl->set( '{login}', $row['name'] );
		$tpl->set( '{mail}', $row['email'] );
		
		$row['date'] = strtotime( $row['date'] );
		if( date( 'Ymd', $row['date'] ) == date( 'Ymd', $_TIME ) ) {
			$tpl->set( '{date}', $lang['time_heute'] . langdate( ", H:i", $row['date'] ) );
		} elseif( date( 'Ymd', $row['date'] ) == date( 'Ymd', ($_TIME - 86400) ) ) {
			$tpl->set( '{date}', $lang['time_gestern'] . langdate( ", H:i", $row['date'] ) );
		} else {
			$tpl->set( '{date}', langdate( $config['timestamp_comment'], $row['date'] ) );
		}
		$tpl->copy_template = preg_replace_callback ( "#\{date=(.+?)\}#i", "formdate", $tpl->copy_template );
		
		if ($config['allow_links'] AND function_exists('replace_links') AND isset($replace_links['comments'])) $row['text'] = replace_links ( $row['text'], $replace_links['comments'] );

		if( $user_group[$member_id['user_group']]['allow_hide'] ) $row['text'] = str_ireplace( "[hide]", "", str_ireplace( "[/hide]", "", $row['text']) );
		else $row['text'] = preg_replace ( "#\[hide\](.+?)\[/hide\]#is", "<div class=\"quote\">" . $lang['news_regus'] . "</div>", $row['text'] );

		$tpl->set( '{comment}', "<div id='comm-id-" . $row['id'] . "'>" . stripslashes( $row['text'] ) . "</div>" );

		$tpl->set( '{comment-id}', $row['id'] );
		
		if( $is_logged and $member_id['user_group'] == '1' ) $tpl->set( '{ip}', "IP: <a onclick=\"return dropdownmenu(this, event, IPMenu('" . $row['ip'] . "', '" . $lang['ip_info'] . "', '" . $lang['ip_tools'] . "', '" . $lang['ip_ban'] . "'), '190px')\" href=\"https://www.nic.ru/whois/?ip={$row['ip']}\" target=\"_blank\">{$row['ip']}</a>" );
		else $tpl->set( '{ip}', '' );
		
		if ( count(explode("@", $row['foto'])) == 2 ) {
			$tpl->set( '{foto}', '//www.gravatar.com/avatar/' . md5(trim($row['foto'])) . '?s=' . intval($user_group[$row['user_group']]['max_foto']) );
		} else {
			if( $row['foto'] ) {
				if (strpos($row['foto'], "//") === 0) $avatar = "http:".$row['foto']; else $avatar = $row['foto'];
				$avatar = @parse_url ( $avatar );
				if($avatar['host']) {
					$tpl->set( '{foto}', $row['foto'] );
				} else $tpl->set( '{foto}', $config['http_home_url'] . "uploads/fotos/" . $row['foto'] );
			} else $tpl->set( '{foto}', "{THEME}/dleimages/noavatar.png" );
		}
		
		
		if( ($row['full_story'] < 13) AND $config['hide_full_link'] ) $tpl->set_block( "'\\[full-link\\](.*?)\\[/full-link\\]'si", "" );
		else {
			
			$tpl->set( '[full-link]', "<a href=\"" . $full_link . "\">" );
			
			$tpl->set( '[/full-link]', "</a>" );
		}
		
		$tpl->set( '{full-link}', $full_link );
		
		
		if( $row['fullname'] ) {
			$tpl->set( '[fullname]', "" );
			$tpl->set( '[/fullname]', "" );
			$tpl->set( '{fullname}', stripslashes( $row['fullname'] ) );
			$tpl->set_block( "'\\[not-fullname\\](.*?)\\[/not-fullname\\]'si", "" );
		} else {
			$tpl->set_block( "'\\[fullname\\](.*?)\\[/fullname\\]'si", "" );
			$tpl->set( '{fullname}', "" );
			$tpl->set( '[not-fullname]', "" );
			$tpl->set( '[/not-fullname]', "" );
		}
		
		if( $row['land'] ) {
			$tpl->set( '[land]', "" );
			$tpl->set( '[/land]', "" );
			$tpl->set( '{land}', stripslashes( $row['land'] ) );
			$tpl->set_block( "'\\[not-land\\](.*?)\\[/not-land\\]'si", "" );
		} else {
			$tpl->set_block( "'\\[land\\](.*?)\\[/land\\]'si", "" );
			$tpl->set( '{land}', "" );
			$tpl->set( '[not-land]', "" );
			$tpl->set( '[/not-land]', "" );
		}
		
		if( $row['signature'] and $user_group[$row['user_group']]['allow_signature'] ) {
			$tpl->set_block( "'\\[signature\\](.*?)\\[/signature\\]'si", "\\1" );
			$tpl->set( '{signature}', stripslashes( $row['signature'] ) );
		} else {
			$tpl->set_block( "'\\[signature\\](.*?)\\[/signature\\]'si", "" );
		}
		
		$tpl->set( '{registration}', langdate( "j.m.Y", $row['reg_date'] ) );
		
		if( $row['lastdate'] ) {
			$tpl->set( '{lastdate}', langdate( "j.m.Y", $row['lastdate'] ) );
			if ( ($row['lastdate'] + 1200) > $_TIME OR ($row['user_id'] AND $row['user_id'] == $member_id['user_id'])) {
				$tpl->set( '[online]', "" );
				$tpl->set( '[/online]', "" );
				$tpl->set_block( "'\\[offline\\](.*?)\\[/offline\\]'si", "" );
			} else {
				$tpl->set( '[offline]', "" );
				$tpl->set( '[/offline]', "" );
				$tpl->set_block( "'\\[online\\](.*?)\\[/online\\]'si", "" );
			}
		} else {
			$tpl->set( '{lastdate}', '--' );
			$tpl->set_block( "'\\[offline\\](.*?)\\[/offline\\]'si", "" );
			$tpl->set_block( "'\\[online\\](.*?)\\[/online\\]'si", "" );
		}
		
		if( $user_group[$row['user_group']]['icon'] ) $tpl->set( '{group-icon}', "<img src=\"" . $user_group[$row['user_group']]['icon'] . "\" alt=\"\" />" );
		else $tpl->set( '{group-icon}', "" );

		$tpl->set( '{group-name}', $user_group[$row['user_group']]['group_prefix'].$user_group[$row['user_group']]['group_name'].$user_group[$row['user_group']]['group_suffix'] );
		
		if( $row['comm_num'] ) {
			$tpl->set( '[comm-num]', "" );
			$tpl->set( '[/comm-num]', "" );
			$tpl->set( '{comm-num}', $row['comm_num'] );
			$tpl->set_block( "'\\[not-comm-num\\](.*?)\\[/not-comm-num\\]'si", "" );
		} else {
			$tpl->set( '{comm-num}', 0 );
			$tpl->set( '[not-comm-num]', "" );
			$tpl->set( '[/not-comm-num]', "" );
			$tpl->set_block( "'\\[comm-num\\](.*?)\\[/comm-num\\]'si", "" );
		}

		if( $row['news_num'] ) {
			$tpl->set( '[news-num]', "" );
			$tpl->set( '[/news-num]', "" );
			$tpl->set( '{news-num}', $row['news_num'] );
			$tpl->set_block( "'\\[not-news-num\\](.*?)\\[/not-news-num\\]'si", "" );
		} else {
			$tpl->set( '{news-num}', 0 );
			$tpl->set( '[not-news-num]', "" );
			$tpl->set( '[/not-news-num]', "" );
			$tpl->set_block( "'\\[news-num\\](.*?)\\[/news-num\\]'si", "" );
		}
		
		if( $is_logged) {
			$tpl->set( '[complaint]', "<a href=\"javascript:AddComplaint('" . $row['id'] . "', 'comments')\">" );
			$tpl->set( '[/complaint]', "</a>" );
		} else {
			$tpl->set_block( "'\\[complaint\\](.*?)\\[/complaint\\]'si", "" );
		}

	    if( strpos( $tpl->copy_template, "[xfvalue_" ) !== false ) $this->xfound = true;
		else $this->xfound = false;
		if( $this->xfound ) $this->xfields = xfieldsload( true );
		if( $this->xfound ) {
			$xfieldsdata = xfieldsdataload( $row['xfields'] );
			foreach ( $this->xfields as $value ) {
				$preg_safe_name = preg_quote( $value[0], "'" );
				if( $value[5] != 1 or $member_id['user_group'] == 1 or ($is_logged and $row['is_register'] and $member_id['name'] == $row['name']) ) {
					if( empty( $xfieldsdata[$value[0]] ) ) {
						$tpl->copy_template = preg_replace( "'\\[xfgiven_{$preg_safe_name}\\](.*?)\\[/xfgiven_{$preg_safe_name}\\]'is", "", $tpl->copy_template );
						$tpl->copy_template = str_replace( "[xfnotgiven_{$value[0]}]", "", $tpl->copy_template );
						$tpl->copy_template = str_replace( "[/xfnotgiven_{$value[0]}]", "", $tpl->copy_template );
					} else {
						$tpl->copy_template = preg_replace( "'\\[xfnotgiven_{$preg_safe_name}\\](.*?)\\[/xfnotgiven_{$preg_safe_name}\\]'is", "", $tpl->copy_template );
						$tpl->copy_template = str_replace( "[xfgiven_{$value[0]}]", "", $tpl->copy_template );
						$tpl->copy_template = str_replace( "[/xfgiven_{$value[0]}]", "", $tpl->copy_template );
					}
					$tpl->copy_template = preg_replace( "'\\[xfvalue_{$preg_safe_name}\\]'i", stripslashes( $xfieldsdata[$value[0]] ), $tpl->copy_template );
				} else {
					$tpl->copy_template = preg_replace( "'\\[xfgiven_{$preg_safe_name}\\](.*?)\\[/xfgiven_{$preg_safe_name}\\]'is", "", $tpl->copy_template );
					$tpl->copy_template = preg_replace( "'\\[xfvalue_{$preg_safe_name}\\]'i", "", $tpl->copy_template );
					$tpl->copy_template = preg_replace( "'\\[xfnotgiven_{$preg_safe_name}\\](.*?)\\[/xfnotgiven_{$preg_safe_name}\\]'is", "", $tpl->copy_template );
				}
			}
		}
		
		if ( $config['comments_rating_type'] == "1" ) {
				$tpl->set( '[rating-type-2]', "" );
				$tpl->set( '[/rating-type-2]', "" );
				$tpl->set_block( "'\\[rating-type-1\\](.*?)\\[/rating-type-1\\]'si", "" );
				$tpl->set_block( "'\\[rating-type-3\\](.*?)\\[/rating-type-3\\]'si", "" );
		} elseif ( $config['comments_rating_type'] == "2" ) {
				$tpl->set( '[rating-type-3]', "" );
				$tpl->set( '[/rating-type-3]', "" );
				$tpl->set_block( "'\\[rating-type-1\\](.*?)\\[/rating-type-1\\]'si", "" );
				$tpl->set_block( "'\\[rating-type-2\\](.*?)\\[/rating-type-2\\]'si", "" );
		} else {
				$tpl->set( '[rating-type-1]', "" );
				$tpl->set( '[/rating-type-1]', "" );
				$tpl->set_block( "'\\[rating-type-3\\](.*?)\\[/rating-type-3\\]'si", "" );
				$tpl->set_block( "'\\[rating-type-2\\](.*?)\\[/rating-type-2\\]'si", "" );	
		}
			
		if( $config['allow_comments_rating'] ) { 
			$tpl->set( '{rating}', ShowCommentsRating( $row['id'], $row['rating'], $row['vote_num'], $user_group[$member_id['user_group']]['allow_comments_rating'] ) );
			$tpl->set( '{vote-num}', "<span id=\"comments-vote-num-id-".$row['id']."\">".$row['vote_num']."</span>" );
			$tpl->set( '[rating]', "" );
			$tpl->set( '[/rating]', "" );
			if($row['rating'] > 0 ) {
				$tpl->set( '[positive-comment]', "" );
				$tpl->set( '[/positive-comment]', "" );
				$tpl->set_block( "'\\[negative-comment\\](.*?)\\[/negative-comment\\]'si", "" );
				$tpl->set_block( "'\\[neutral-comment\\](.*?)\\[/neutral-comment\\]'si", "" );
			} elseif($row['rating'] < 0){
				$tpl->set( '[negative-comment]', "" );
				$tpl->set( '[/negative-comment]', "" );
				$tpl->set_block( "'\\[positive-comment\\](.*?)\\[/positive-comment\\]'si", "" );
				$tpl->set_block( "'\\[neutral-comment\\](.*?)\\[/neutral-comment\\]'si", "" );	
			} else {
				$tpl->set( '[neutral-comment]', "" );
				$tpl->set( '[/neutral-comment]', "" );
				$tpl->set_block( "'\\[positive-comment\\](.*?)\\[/positive-comment\\]'si", "" );
				$tpl->set_block( "'\\[negative-comment\\](.*?)\\[/negative-comment\\]'si", "" );
			}
			if( $user_group[$member_id['user_group']]['allow_comments_rating'] ) {
				if ( $config['comments_rating_type'] ) {
					$tpl->set( '[rating-plus]', "<a href=\"#\" onclick=\"doCommentsRate('plus', '{$row['id']}'); return false;\" >" );
					$tpl->set( '[/rating-plus]', '</a>' );
					if ( $config['comments_rating_type'] == "2" ) {
						$tpl->set( '[rating-minus]', "<a href=\"#\" onclick=\"doCommentsRate('minus', '{$row['id']}'); return false;\" >" );
						$tpl->set( '[/rating-minus]', '</a>' );
					} else {
						$tpl->set_block( "'\\[rating-minus\\](.*?)\\[/rating-minus\\]'si", "" );
					}
				} else {
					$tpl->set_block( "'\\[rating-plus\\](.*?)\\[/rating-plus\\]'si", "" );
					$tpl->set_block( "'\\[rating-minus\\](.*?)\\[/rating-minus\\]'si", "" );
				}
			} else {
				$tpl->set_block( "'\\[rating-plus\\](.*?)\\[/rating-plus\\]'si", "" );
				$tpl->set_block( "'\\[rating-minus\\](.*?)\\[/rating-minus\\]'si", "" );				
			}
		} else { 
			$tpl->set( '{rating}', "" );
			$tpl->set( '{vote-num}', "" );
			$tpl->set_block( "'\\[rating\\](.*?)\\[/rating\\]'si", "" );
			$tpl->set_block( "'\\[rating-plus\\](.*?)\\[/rating-plus\\]'si", "" );
			$tpl->set_block( "'\\[rating-minus\\](.*?)\\[/rating-minus\\]'si", "" );
		}
		
		if ( $row['user_id'] AND $row['user_id'] == $member_id['user_id'] ) {
			$tpl->set( '[comments-author]', "" );
			$tpl->set( '[/comments-author]', "" );
			$tpl->set_block( "'\\[not-comments-author\\](.*?)\\[/not-comments-author\\]'si", "" );
		} else {
			$tpl->set_block( "'\\[comments-author\\](.*?)\\[/comments-author\\]'si", "" );
			$tpl->set( '[not-comments-author]', "" );
			$tpl->set( '[/not-comments-author]', "" );
		}

		if ( $autor AND $row['autor'] AND $row['autor'] == $autor ) {
			$tpl->set( '[news-author]', "" );
			$tpl->set( '[/news-author]', "" );
			$tpl->set_block( "'\\[not-news-author\\](.*?)\\[/not-news-author\\]'si", "" );
		} else {
			$tpl->set_block( "'\\[news-author\\](.*?)\\[/news-author\\]'si", "" );
			$tpl->set( '[not-news-author]', "" );
			$tpl->set( '[/not-news-author]', "" );
		}
		
		$tpl->set( '[comment]', "" );
		$tpl->set( '[/comment]', "" );
		$tpl->set_block( "'\\[not-comment\\](.*?)\\[/not-comment\\]'si", "" );

		$tpl->compile('comment');
	    $comment = $tpl->result['comment'] . $comment;
		unset($tpl->result['comment']);
	
	}
	
	if($error == true) {
		$tpl->set_block( "'\\[comment\\](.*?)\\[/comment\\]'si", "" );
		$tpl->set( '[not-comment]', "" );
		$tpl->set( '[/not-comment]', "" );
		$tpl->compile('comment');
	    $comment = $tpl->result['comment'];
	}
	
	create_cache( "comm_" . $news_id, $comment, $config['skin'], true );
	
	$tpl->clear();
	$db->free();
	
	echo $comment;
	
}

?>