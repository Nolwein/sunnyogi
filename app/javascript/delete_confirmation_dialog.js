window.addEventListener(('turbo:load'), () => {
  document.addEventListener('submit', (event) => {
    if (event.target && event.target.className === 'delete-alertbox') {
      event.preventDefault()
      Swal.fire({
          title: 'Are you sure?',
          text: "You won't be able to revert this!",
          icon: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#668a6ed6',
          cancelButtonColor: '#864226',
          confirmButtonText: 'Yes, delete it!'
      })
        .then((result) => {
          if (result.isConfirmed) {
            event.target.submit();
          }
        })
        .catch(event.preventDefault())
    }
  })
})
