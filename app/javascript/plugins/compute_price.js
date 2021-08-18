const computePrice = () => {
  // get start date input DOM element
  const start = document.getElementById("search_starts_at");
  // get end date input DOM element
  const end = document.getElementById("search_ends_at");
  // get daily animal price value + convert to Number
  const animalPrice = Number.parseInt(document.getElementById('animal-price').innerHTML, 10);
  // add event listener on end input (change) => the trigger is any change to the end date input

  // update DOM
  const updateDom = () => {
    // create end and start date varaibles
    const startDate = new Date(start.value);
    const endDate = new Date(end.value);

    if (endDate != 'Invalid Date') {

      document.getElementById('btn-payment').classList.remove('not-active');
      document.getElementById('btn-payment').disabled = false;
      // compute the days span between start and end
      const days = Math.round((endDate - startDate) / (1000 * 60 * 60 * 24));
      // update number of day value in DOM
      document.querySelector('#total-days').innerHTML = days;
      // get total price DOM element
      const totalPrice = document.querySelector('#total-price');
      //update total price value in DOM
      totalPrice.innerHTML = days * animalPrice
    }

  }

  // update DOM on end date change
  end.addEventListener('change', (event) => {
    updateDom()
  });

  // update DOM on end date change
  start.addEventListener('change', (event) => {
    updateDom()
  });

}

export { computePrice }
