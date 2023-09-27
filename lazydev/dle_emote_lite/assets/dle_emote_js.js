let setEmoteEvent = function() {
    let loc = window.location;

    if (loc.toString().indexOf('/@') !== -1 || loc.toString().indexOf('subaction=userinfo') !== -1) {
        return;
    }

    let dleEmoteItem = document.querySelectorAll('.dle_emote_item');
    dleEmoteItem.forEach(function (emote) {
        emote.addEventListener('click', function (event) {
            event.preventDefault();

            sendAjaxEmote(emote.dataset.emotenewsid, emote.dataset.emoteid, emote);
        });
    });
}

setEmoteEvent();

let sendAjaxEmote = function(i, e, d) {
    let body = 'i=' + i + '&e=' + e + '&h=' + dle_login_hash;

    let xhr = new XMLHttpRequest();
    xhr.open('POST', '/engine/lazydev/dle_emote_lite/ajax.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onreadystatechange = function() {
        if (xhr.readyState !== 4) {
            return;
        }

        if (xhr.status === 200) {
            let blockEmote = document.getElementById('dle_emote_block');
            blockEmote.innerHTML = xhr.response;
            setEmoteEvent();
        }
    }

    xhr.send(body);
}

let getSVG = function(url) {
	let xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			let div = document.createElement('div');
			div.innerHTML = new XMLSerializer().serializeToString(xhr.responseXML);
			document.body.insertBefore(div, document.body.childNodes[0]);
		}
	}

	xhr.open('GET', url, true);
	xhr.send('');

}

document.addEventListener('DOMContentLoaded', function() {
    getSVG('/templates/' + dle_skin + '/lazydev/dle_emote_lite/assets/gradient.svg');
	getSVG('/templates/' + dle_skin + '/lazydev/dle_emote_lite/assets/emot.svg');
});