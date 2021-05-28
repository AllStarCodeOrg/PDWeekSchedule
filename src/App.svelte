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

  function init() {
    const lastChose = window.localStorage.getItem('lastChose');
    if (lastChose !== undefined) {
      if (lastChose === 'LITATF') {
        animateLITATF();
        return;
      }
      if (lastChose === 'SIC') {
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
    }
  };

  const SICClicked = (e: Event) => {
    if (SICSchedule.classList.contains('hidden')) {
      SICSchedule.classList.toggle('hidden');
      LITATFSchedule.classList.toggle('hidden');
      window.localStorage.setItem('lastChose', 'SIC');
      animateSIC();
    }
  };

  document.addEventListener('DOMContentLoaded', () => {
    console.log('DOM loaded and parsed');
    init();
  });
</script>

<main class="container">
  <div class="row">
    <div class="col s12 center">
      <div class="title mainheader">All Star Code PD Week Schedule</div>
    </div>
  </div>
  <div class="button-cont">
    <button class="waves-effect waves-light btn" on:click={LITATFClicked}
      >LI/TA/TF</button
    >
    <img
      id="titleAsterik"
      class="col s4 offset-s5"
      src={asterik}
      alt="ASC Asterik"
    />
    <button class="waves-effect waves-light btn" on:click={SICClicked}
      >SIC</button
    >
  </div>
  <ul class="collapsible">
    <div id="LITATFCont" bind:this={LITATFSchedule}>
      <LITATF />
    </div>
    <div id="SICCont" class="hidden" bind:this={SICSchedule}>
      <SIC />
    </div>
  </ul>
</main>
