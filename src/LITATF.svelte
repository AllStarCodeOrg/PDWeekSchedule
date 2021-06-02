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
          time: '10:45AM - 11:15AM',
          duration: '30',
          actType: 'teambuilding',
          links: [],
        },
        {
          name: 'History of All Star Code',
          time: '11:15AM - 11:30AM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Preview of the Summer Intensive Program',
          time: '11:30AM - 11:45AM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'BREAK',
          time: '11:45AM - 12:00PM',
          duration: '15',
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
          time: '02:30PM - 03:00PM',
          duration: '30',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'BREAK',
          time: '03:00PM - 03:15PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Learning Management System',
          time: '03:15PM - 03:45PM',
          duration: '30',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Orientation Intro',
          time: '03:45PM - 04:00PM',
          duration: '15',
          actType: 'project',
          links: [],
        },
        {
          name: 'BREAK',
          time: '04:00PM - 04:15PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Growth Mindset',
          time: '04:15PM - 05:15PM',
          duration: '60',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Exit Survey',
          time: '05:15PM - 05:30PM',
          duration: '15',
          actType: 'survey',
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
    {
      daynum: '2',
      title: 'June 29th',
      activities: [
        {
          name: 'First Peek at Remote Teaching',
          time: '10:00AM - 10:30AM',
          duration: '30',
          actType: 'codealong',
          links: [
            { displayText: 'Sheets', linkURL: 'https://sheets.google.com' },
            { displayText: 'Docs2', linkURL: 'https://docs2.google.com' },
          ],
        },
        {
          name: 'BREAK',
          time: '10:30AM - 10:45AM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'First Peek at Remote Teaching',
          time: '10:45AM - 11:45AM',
          duration: '60',
          actType: 'codealong',
          links: [],
        },
        {
          name: 'BREAK',
          time: '11:45AM - 12:00PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Team Building',
          time: '12:00PM - 12:30PM',
          duration: '30',
          actType: 'teambuilding',
          links: [],
        },
        {
          name: 'Evaluation Standards',
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
          name: 'Escalation Policy',
          time: '02:00PM - 02:30PM',
          duration: '30',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Microteaching Demo',
          time: '02:30PM - 03:15PM',
          duration: '45',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'Microteaching #1',
          time: '03:15PM - 04:30PM',
          duration: '75',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'BREAK',
          time: '04:30PM - 04:45PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Virtual Classroom: Expectations vs. Reality ',
          time: '04:45PM - 05:45PM',
          duration: '60',
          actType: 'codealong',
          links: [],
        },
        {
          name: 'Exit Survey',
          time: '05:45PM - 06:00PM',
          duration: '15',
          actType: 'survey',
          links: [],
        },
        {
          name: 'Office Hours',
          time: '06:00PM - 06:30PM',
          duration: '30',
          actType: 'officehours',
          links: [],
        },
      ],
    },
    {
      daynum: '3',
      title: 'June 30th',
      activities: [
        {
          name: 'Team Building',
          time: '10:00AM - 10:30AM',
          duration: '30',
          actType: 'teambuilding',
          links: [
            { displayText: 'Slides', linkURL: 'https://slides.google.com' },
            { displayText: 'Docs', linkURL: 'https://docs.google.com' },
          ],
        },
        {
          name: 'BREAK',
          time: '10:30AM - 10:45AM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Virtual Classroom Management',
          time: '10:45AM - 11:45AM',
          duration: '60',
          actType: 'codealong',
          links: [],
        },
        {
          name: 'BREAK',
          time: '11:45AM - 12:00PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Virtual Classroom Management',
          time: '12:00PM - 01:00PM',
          duration: '60',
          actType: 'codealong',
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
          name: 'Meet the Staff',
          time: '02:00PM - 02:30PM',
          duration: '30',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Orientation Briefing',
          time: '02:30PM - 03:00PM',
          duration: '30',
          actType: 'project',
          links: [],
        },
        {
          name: 'Orientation Prep',
          time: '03:00PM - 04:30PM',
          duration: '90',
          actType: 'project',
          links: [],
        },
        {
          name: 'BREAK',
          time: '04:30PM - 04:45PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Incoming & Returning Instructors',
          time: '04:45PM - 05:45PM',
          duration: '60',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Exit Survey',
          time: '05:45PM - 06:00PM',
          duration: '15',
          actType: 'survey',
          links: [],
        },
        {
          name: 'Office Hours',
          time: '06:00PM - 06:30PM',
          duration: '30',
          actType: 'officehours',
          links: [],
        },
      ],
    },
    {
      daynum: '4',
      title: 'July 1st',
      activities: [
        {
          name: 'Team Building',
          time: '10:00AM - 10:30AM',
          duration: '30',
          actType: 'teambuilding',
          links: [
            { displayText: 'Slides', linkURL: 'https://slides.google.com' },
            { displayText: 'Docs', linkURL: 'https://docs.google.com' },
          ],
        },
        {
          name: 'BREAK',
          time: '10:30AM - 10:45AM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Kinesthetic Learning',
          time: '10:45AM - 11:30AM',
          duration: '45',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'Kinesthetic Learning Demo',
          time: '11:30AM - 11:45AM',
          duration: '15',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'BREAK',
          time: '11:45AM - 12:00PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Virtual Classroom: Neurodiversity',
          time: '12:00PM - 01:00PM',
          duration: '60',
          actType: 'codealong',
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
          name: 'Virtual Classroom: Neurodiversity',
          time: '02:00PM - 03:00PM',
          duration: '60',
          actType: 'codealong',
          links: [],
        },
        {
          name: 'BREAK',
          time: '03:00PM - 03:15PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Culturally Relevant Pedagogy',
          time: '03:15PM - 03:45PM',
          duration: '30',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Scholar Services',
          time: '03:45PM - 04:00PM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Orientation Prep',
          time: '04:00PM - 05:00PM',
          duration: '60',
          actType: 'project',
          links: [],
        },
        {
          name: 'Orientation Break',
          time: '05:00PM - 06:00PM',
          duration: '60',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Orientation',
          time: '06:00PM - 08:30PM',
          duration: '150',
          actType: 'project',
          links: [],
        },
      ],
    },
    {
      daynum: '5',
      title: 'July 2nd',
      activities: [
        {
          name: 'Team Building',
          time: '10:30AM - 11:00AM',
          duration: '30',
          actType: 'teambuilding',
          links: [
            { displayText: 'Slides', linkURL: 'https://slides.google.com' },
            { displayText: 'Docs', linkURL: 'https://docs.google.com' },
          ],
        },
        {
          name: 'Exit Survey',
          time: '11:00AM - 11:15AM',
          duration: '15',
          actType: 'survey',
          links: [],
        },
        {
          name: 'Professional Blind Spot',
          time: '11:15AM - 12:15PM',
          duration: '60',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'BREAK',
          time: '12:15PM - 12:30PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Microteaching #2',
          time: '12:30PM - 01:45PM',
          duration: '75',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'LUNCH',
          time: '01:45PM - 02:45PM',
          duration: '60',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Extrinsic vs. Intrinsic Motivation',
          time: '02:45PM - 03:15PM',
          duration: '30',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'Challenge Zone',
          time: '03:15PM - 04:15PM',
          duration: '60',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'LI / TA + TF Breakout',
          time: '04:15PM - 04:45PM',
          duration: '30',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'BREAK',
          time: '04:45PM - 05:00PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Kahoot!',
          time: '05:00PM - 05:30PM',
          duration: '30',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Exit Survey',
          time: '05:30PM - 05:45PM',
          duration: '15',
          actType: 'survey',
          links: [],
        },
        {
          name: 'Closing Statement',
          time: '05:45PM - 06:00PM',
          duration: '15',
          actType: 'coreskill',
          links: [],
        },
        {
          name: 'Office Hours',
          time: '06:00PM - 06:30PM',
          duration: '30',
          actType: 'officehours',
          links: [],
        },
      ],
    },
  ];
</script>

<ul class="collapsible">
  {#each data as day}
    <li>
      <div
        id={`LITATF-day-${day.daynum}-header`}
        class="collapsible-header title"
        data-state="closed"
      >
        <span>Day {day.daynum} -</span>
        <span class="dayofWeek"
          >&nbsp;
          {#if day.daynum === '1'}
            Mon,
          {:else if day.daynum === '2'}
            Tues,
          {:else if day.daynum === '3'}
            Weds,
          {:else if day.daynum === '4'}
            Thurs,
          {:else if day.daynum === '5'}
            Fri,
          {/if}
        </span>
        <span class="titleFix">&nbsp;{day.title}</span>
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
  <li class="litatf-all-links all-links">
    <div class="collapsible-header">
      <div class="title">All PD Materials</div>
    </div>
    <div class="collapsible-body">
      <ul class="collection">
        {#each data as day}
          {#each day.activities as activity}
            {#if activity.links.length > 0}
              <AllMatsLink
                classes={`day${day.daynum}-all-links`}
                actname={activity.name}
                links={activity.links}
              />
            {/if}
          {/each}
        {/each}
      </ul>
    </div>
  </li>
</ul>
