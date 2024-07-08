Swal.fire({
    title: "Desea eliminar este usuario?",
    text: "No podras revertir esto!",
    icon: "warning",
    showCancelButton: true,
    confirmButtonColor: "#3085d6",
    cancelButtonColor: "#d33",
    confirmButtonText: "Si, eliminar!"
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire({
        title: "Eliminar!",
        text: "Usuario ha sido eliminado",
        icon: "success"
      });
    }
  });

  Swal.fire({
    position: "top-end",
    icon: "success",
    title: "Usuario registrado con exito!",
    showConfirmButton: false,
    timer: 1500
  });