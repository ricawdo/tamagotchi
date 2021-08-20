
const coordinates = (data) => {
  const latitude = document.getElementById('latitude')
  if (latitude) {
    latitude.value = data.coords.latitude
    const longitude = document.getElementById('longitude')
    longitude.value = data.coords.longitude
  }
}
export { coordinates };
