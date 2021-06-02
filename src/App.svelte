<script lang="ts">
  import asterik from './assets/ASC_ASTERIK.svg';
  import LITATF from './LITATF.svelte';
  import SIC from './SIC.svelte';
  import anime from 'animejs';

  let LITATFSchedule: HTMLDivElement;
  let SICSchedule: HTMLDivElement;

  const animateLITATF = () => {
    const allListItems = document.querySelectorAll(
      '#LITATFCont > ul.collapsible > li'
    );
    anime({
      targets: allListItems,
      translateY: [250, 0],
      opacity: [0, 1],
      easing: 'easeInOutExpo',
      duration: 500,
      delay: anime.stagger(150),
    });
  };

  const animateSIC = () => {
    const allListItems = document.querySelectorAll(
      '#SICCont > ul.collapsible > li'
    );
    anime({
      targets: allListItems,
      translateY: [250, 0],
      opacity: [0, 1],
      easing: 'easeInOutExpo',
      duration: 500,
      delay: anime.stagger(150),
    });
  };
  let LITATFBtn: HTMLButtonElement;
  let SICBtn: HTMLButtonElement;

  function init() {
    const lastChose = window.localStorage.getItem('lastChose');
    if (lastChose !== undefined) {
      if (lastChose === 'LITATF') {
        LITATFBtn.classList.toggle('chosen');
        animateLITATF();
        return;
      }
      if (lastChose === 'SIC') {
        SICBtn.classList.toggle('chosen');
        SICSchedule.classList.toggle('hidden');
        LITATFSchedule.classList.toggle('hidden');
        animateSIC();
      }
    }
  }

  const LITATFClicked = (e: Event) => {
    if (LITATFSchedule.classList.contains('hidden')) {
      LITATFSchedule.classList.toggle('hidden');
      SICSchedule.classList.toggle('hidden');
      window.localStorage.setItem('lastChose', 'LITATF');
      animateLITATF();
      if (!LITATFBtn.classList.contains('chosen')) {
        LITATFBtn.classList.toggle('chosen');
      }
      if (SICBtn.classList.contains('chosen'))
        SICBtn.classList.toggle('chosen');
    }
  };

  const SICClicked = (e: Event) => {
    if (SICSchedule.classList.contains('hidden')) {
      SICSchedule.classList.toggle('hidden');
      LITATFSchedule.classList.toggle('hidden');
      window.localStorage.setItem('lastChose', 'SIC');
      animateSIC();
      if (!SICBtn.classList.contains('chosen')) {
        SICBtn.classList.toggle('chosen');
      }
      if (LITATFBtn.classList.contains('chosen'))
        LITATFBtn.classList.toggle('chosen');
    }
  };

  document.addEventListener('DOMContentLoaded', () => {
    console.log('DOM loaded and parsed');
    init();
  });
</script>

<main class="container">
  <div id="anchor" />
  <div class="row">
    <div class="col s12 center">
      <div class="title mainheader">
        <img id="titleAsterik" src={asterik} alt="ASC Asterik" />
        All Star Code PD Week Schedule
      </div>
    </div>
  </div>
  <div class="button-cont">
    <button
      class="waves-effect waves-light btn btn-large schedule-btn"
      on:click={LITATFClicked}
      bind:this={LITATFBtn}
    >
      LI/TA/TF Schedule
    </button>
    <button
      class="waves-effect waves-light btn btn-large schedule-btn"
      on:click={SICClicked}
      bind:this={SICBtn}
    >
      SIC schedule
    </button>
  </div>
  <ul class="collapsible">
    <div id="LITATFCont" bind:this={LITATFSchedule}>
      <LITATF />
    </div>
    <div id="SICCont" class="hidden" bind:this={SICSchedule}>
      <SIC />
    </div>
  </ul>
  <button
    id="scrollToTop"
    class="waves-effect waves-light btn btn-medium"
    on:click={() =>
      document.getElementById('anchor').scrollIntoView({ behavior: 'smooth' })}
  >
    back to top
  </button>
</main>
