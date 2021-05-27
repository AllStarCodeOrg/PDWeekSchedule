<script lang="ts">
  type link = {
    displayText: string;
    linkURL: string;
  };
  export let actname: string;
  export let links: link[];
</script>

<li class="collection-item">
  <h5>{actname}</h5>
  {#each links as link}
    <a class="gen-link" target="_blank" href={link.linkURL}>{link.displayText}</a>
  {/each}
</li>
