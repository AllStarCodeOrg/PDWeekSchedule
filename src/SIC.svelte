<script lang="ts">
  import ScheduleBlock from './components/ScheduleBlock.svelte';
  import AllMatsLink from './components/AllMatsLink.svelte';

  const data = [
    {
      daynum: '1',
      title: 'June 28th',
      activities: [
        {
          name: 'Welcome to PD Week',
          time: '10:00AM - 10:15AM',
          duration: '15',
          actType: 'coreskill',
          links: [
            { displayText: 'Slides', linkURL: 'https://slides.google.com' },
            { displayText: 'Docs', linkURL: 'https://docs.google.com' },
          ],
        },
        {
          name: 'What is PD Week?',
          time: '10:15AM - 10:30AM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Meet your Team',
          time: '10:30AM - 10:45AM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Team Building',
          time: '10:45AM - 11:00AM',
          duration: '15',
          actType: 'teambuilding',
          links: [],
        },
        {
          name: 'History of All Star Code',
          time: '11:00AM - 11:15AM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Preview of the Summer Intensive Program',
          time: '11:15AM - 11:30AM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'BREAK',
          time: '11:30AM - 12:00PM',
          duration: '30',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Classroom Roles',
          time: '12:00PM - 12:30PM',
          duration: '30',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Human Resources (Operations)',
          time: '12:30PM - 01:00PM',
          duration: '30',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'LUNCH',
          time: '01:00PM - 02:00PM',
          duration: '60',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Team Building',
          time: '02:00PM - 02:30PM',
          duration: '30',
          actType: 'teambuilding',
          links: [],
        },
        {
          name: 'Learning Management System',
          time: '02:30PM - 02:45PM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'BREAK',
          time: '02:45PM - 03:15PM',
          duration: '30',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Learning Management System',
          time: '03:15PM - 03:30PM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Orientation Intro',
          time: '03:30PM - 03:45PM',
          duration: '15',
          actType: 'project',
          links: [],
        },
        {
          name: 'BREAK',
          time: '03:45PM - 04:15PM',
          duration: '30',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Growth Mindset',
          time: '04:15PM - 04:30PM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Exit Survey',
          time: '04:30PM - 05:30PM',
          duration: '60',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Office Hours',
          time: '05:30PM - 06:00PM',
          duration: '30',
          actType: 'officehours',
          links: [],
        },
      ],
    },
  ];
</script>

<ul class="collapsible">
  {#if data.length > 0}
    {#each data as day}
      <li>
        <div
          id={`day-${day.daynum}-header`}
          class="collapsible-header"
          data-state="closed"
        >
          <h2 class="title">{day.title}</h2>
        </div>
        <div class="collapsible-body">
          {#each day.activities as activity}
            <ScheduleBlock
              name={activity.name}
              time={activity.time}
              duration={activity.duration}
              actType={activity.actType}
              links={activity.links}
              daynum={day.daynum}
            />
          {/each}
        </div>
      </li>
    {/each}
  {/if}
  <li>
    <div class="collapsible-header">
      <h2 class="title">All PD Materials</h2>
    </div>
    <div class="collapsible-body">
      <ul class="collection">
        {#each data as day}
          {#each day.activities as activity}
            {#if activity.links.length > 0}
              <AllMatsLink actname={activity.name} links={activity.links} />
            {/if}
          {/each}
        {/each}
      </ul>
    </div>
  </li>
</ul>
