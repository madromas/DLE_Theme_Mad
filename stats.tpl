<script src="https://cdn.jsdelivr.net/npm/chart.js@4.3.0/dist/chart.umd.min.js"></script>
<article class="fullstory-width mx-auto card p-5 mb-3">
   <div class="mb-2">
      <div class="d-flex justify-content-start my-3">
         <div class="title_bage tb_lg">
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#0d6efd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M20.2 7.8l-7.7 7.7-4-4-5.7 5.7"/>
               <path d="M15 7h6v6"/>
            </svg>
         </div>
         <h3 class="fw-bold ms-3 mt-1">Site statistics</h3>
      </div>
      <p>This section provides updated statistics of the site in real time. You can consult <a href="/index.php?do=lastnews" class="text-decoration-underline">the latest news</a> [not-group=5], <a href="/newposts/" class="text-decoration-underline">unread articles</a> or the <a href="/index.php?do=lastcomments" class="text-decoration-underline">latest comments</a>[/not-group]. Total size of the database <span class="fw-bold">{datenbank}</span>.</p>
      <div class="my-4">
         <h2 class="fw-bold fs-4 ">Articles</h2>
         <p>Summary of the articles on the site.</p>
      </div>
      <center>
         <div class="w-50">
            <canvas id="myChart"></canvas>
         </div>
      </center>
      <div class="mt-5 mb-3">
         <h2 class="fw-bold fs-4">Site statistics by day</h2>
         <p>A summary of the site's activity during the day</p>
      </div>
      <canvas id="myChart2"></canvas>
      <div class="mt-5 mb-3">
         <h2 class="fw-bold fs-4">Site statistics by week</h2>
         <p>A summary of the site's activity during the week</p>
      </div>
      <canvas id="myChart3"></canvas>
      <div class="mt-5 mb-3">
         <h2 class="fw-bold fs-4">Site statistics by month</h2>
         <p>A summary of the site's activity during the month</p>
      </div>
      <canvas id="myChart4"></canvas>
      <div class="mt-5 mb-3">
         <h2 class="fw-bold fs-4">Comments</h2>
         <p>Comment statistics</p>
      </div>
      <canvas id="myChart5"></canvas>
      <div class="mt-5 mb-3">
         <h2 class="fw-bold fs-4 ">Users</h2>
         <p>User statistics</p>
      </div>
      <canvas id="myChart6"></canvas>
      <div class="mt-5 mb-3">
         <h2 class="fw-bold fs-4 ">The best users</h2>
         <p>Table with evaluation of users of the site.</p>
      </div>
      
        <table class="userstop">{topusers}</table>

   
      
   </div>
</article>

<script>
   // Statistiques des articles
   var ctx = document.getElementById('myChart').getContext('2d');
   var myChart = new Chart(ctx, {
      type: 'doughnut',
      data: {
          labels: ['Articles', 'Published', 'On the home page', 'In moderation'],
          datasets: [{
              data: [{news_num}, {news_allow}, {news_main}, {news_moder}],
              backgroundColor: ['#e91e63', '#00e676', '#ff5722', '#1e88e5'],
              borderWidth: 0.5 ,
              borderColor: '#ddd',
   		hoverOffset: 10,			
          }]
      },
      options: {     
        
         
          plugins: {
   		title: {
              display: true,
              text: 'Article statistics',
              position: 'top',
              fontSize: 25,
              fontColor: '#000000',
              padding: 20
          },
   	tooltips: {
              enabled: true
          },
   	legend: {
              display: true,
              position: 'bottom',
              labels: {
                  boxWidth: 20,
                  fontColor: '#111',
                  padding: 20
              }
          },
              datalabels: {
                  color: '#111',
                  textAlign: 'center',
                  font: {
                      lineHeight: 1.8
                  },
                  formatter: function(value, ctx) {
                      return ctx.chart.data.labels[ctx.dataIndex] + '\n' + value + '%';
                  }
              }
          }
      }
   });
   
   // Statistiques du site par jour
   var ctx = document.getElementById('myChart2').getContext('2d');
   var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: ['Articles', 'Comments', 'Users'],
          datasets: [{
              label: 'Statistics of the day',
              data: [{news_day}, {comm_day}, {user_day}],
              backgroundColor: [
                  'rgba(216, 27, 96, 0.6)',
                  'rgba(3, 169, 244, 0.6)',
                  'rgba(255, 152, 0, 0.6)'                
              ],
              borderColor: [
                  'rgba(216, 27, 96, 1)',
                  'rgba(3, 169, 244, 1)',
                  'rgba(255, 152, 0, 1)'                
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: false
          },
          title: {
              display: true,
              text: 'Life expectancy by country',
              position: 'top',
              fontSize: 16,
              padding: 20
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 75
                  }
              }]
          }
      }
   });
   
   // Statistiques du site par semaine
   var ctx = document.getElementById('myChart3').getContext('2d');
   var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: ['Articles', 'Comments', 'Users'],
          datasets: [{
              label: 'Statistics of the week',
              data: [{news_week}, {comm_week}, {user_week}],
              backgroundColor: [
                  'rgba(216, 27, 96, 0.6)',
                  'rgba(3, 169, 244, 0.6)',
                  'rgba(255, 152, 0, 0.6)'                
              ],
              borderColor: [
                  'rgba(216, 27, 96, 1)',
                  'rgba(3, 169, 244, 1)',
                  'rgba(255, 152, 0, 1)'                
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: true
          },
          title: {
              display: true,            
              position: 'top',
              fontSize: 16,
              padding: 20
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 75
                  }
              }]
          }
      }
   });
   
   
   // Statistiques du site par mois
   var ctx = document.getElementById('myChart4').getContext('2d');
   var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: ['Articles', 'Comments', 'Users'],
          datasets: [{
              label: 'Statistics of the month',
              data: [{news_month}, {comm_month}, {user_month}],
              backgroundColor: [
                  'rgba(216, 27, 96, 0.6)',
                  'rgba(3, 169, 244, 0.6)',
                  'rgba(255, 152, 0, 0.6)'                
              ],
              borderColor: [
                  'rgba(216, 27, 96, 1)',
                  'rgba(3, 169, 244, 1)',
                  'rgba(255, 152, 0, 1)'                
              ],
              borderWidth: 1
          }]
      },
      options: {
          legend: {
              display: true
          },
          title: {
              display: true,            
              position: 'top',
              fontSize: 16,
              padding: 20
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 75
                  }
              }]
          }
      }
   });
   
   
   	// Statistiques des commentaires
   	var ctx = document.getElementById('myChart5').getContext('2d');
   	var myChart = new Chart(ctx, {
   		type: 'bar',
   		data: {
   			labels: ['Comments'],
   			datasets: [{
   				label: 'Total number',
   				data: [{comm_num}],
   				backgroundColor: [
   					'rgba(216, 27, 96, 0.6)'						               
   				],
   				borderColor: [
   					'rgba(216, 27, 96, 1)'						               
   				],
   				borderWidth: 1
   			}]
   		},
   		options: {
   			legend: {
   				display: true
   			},
   			title: {
   				display: true,            
   				position: 'top',
   				fontSize: 16,
   				padding: 20
   			},
   			scales: {
   				yAxes: [{
   					ticks: {
   						min: 75
   					}
   				}]
   			}
   		}
   	});
   	
   	
   	// Statistiques des utilisateurs
   	var ctx = document.getElementById('myChart6').getContext('2d');
   	var myChart = new Chart(ctx, {
   		type: 'bar',
   		data: {
   			labels: ['Registered', 'Banned'],
   			datasets: [{
   				label: 'Users',
   				data: [{user_num}, {user_banned}],
   				backgroundColor: [						
   					'rgba(3, 169, 244, 0.6)',
   					'rgba(255, 152, 0, 0.6)'                
   				],
   				borderColor: [						
   					'rgba(3, 169, 244, 1)',
   					'rgba(255, 152, 0, 1)'                
   				],
   				borderWidth: 1
   			}]
   		},
   		options: {
   			legend: {
   				display: true
   			},
   			title: {
   				display: true,            
   				position: 'top',
   				fontSize: 16,
   				padding: 20
   			},
   			scales: {
   				yAxes: [{
   					ticks: {
   						min: 75
   					}
   				}]
   			}
   		}
   	});
   		
</script>