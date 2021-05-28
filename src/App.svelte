<script lang="ts">
  import asterik from './assets/ASC_ASTERIK.svg';
  import LITATF from './LITATF.svelte';
  import SIC from './SIC.svelte';

  let LITATFSchedule: HTMLDivElement;
  let SICSchedule: HTMLDivElement;

  function init() {
    const lastChose = window.localStorage.getItem('lastChose');
    if (lastChose !== undefined) {
      if(lastChose === 'LITATF') {
        return;
      }
      if(lastChose === 'SIC') {
        SICSchedule.classList.toggle('hidden');
        LITATFSchedule.classList.toggle('hidden');
      }
    }
  }

  const LITATFClicked = (e: Event) => {
    if (LITATFSchedule.classList.contains('hidden')) {
      LITATFSchedule.classList.toggle('hidden');
      SICSchedule.classList.toggle('hidden');
      window.localStorage.setItem('lastChose', 'LITATF');
    }
  };

  const SICClicked = (e: Event) => {
    if (SICSchedule.classList.contains('hidden')) {
      SICSchedule.classList.toggle('hidden');
      LITATFSchedule.classList.toggle('hidden');
      window.localStorage.setItem('lastChose', 'SIC');
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
      <h1 class="title">All Star Code PD Week Schedule</h1>
      <img
        id="titleAsterik"
        class="col s4 offset-s5"
        src={asterik}
        alt="ASC Asterik"
      />
    </div>
  </div>
  <div class="button-cont">
    <button class="waves-effect waves-light btn" on:click={LITATFClicked}
      >LI/TA/TF</button
    >
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
