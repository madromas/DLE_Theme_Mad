// Notification
const notify = document.getElementById("notify");
    const notify_alert = document.getElementById("notify_alert");
    const no_notify = document.getElementById("no_notify");
    
    if (notify)
    {
      notify_alert.classList.remove("d-none");  
      no_notify.classList.add("d-none");  
    };

// Tooltips inicialisation
var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
});

// Popover inicialisation
const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl));


