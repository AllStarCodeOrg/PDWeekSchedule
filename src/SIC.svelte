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
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/193NgSXQrduiCDqnKJKLbFtp0BGSXyu1TYyRnO4Frkc8/edit?usp=sharing',
            },
          ],
        },
        {
          name: 'What is PD Week?',
          time: '10:15AM - 10:30AM',
          duration: '15',
          actType: 'coreskill',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/193NgSXQrduiCDqnKJKLbFtp0BGSXyu1TYyRnO4Frkc8/edit?usp=sharing',
            },
          ],
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
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/1wj68jL-ZYP1YzZNsgI7ZTlkLDcn2teNqum2XVAAUt7M/edit?usp=sharing',
            },
          ],
        },
        {
          name: 'Preview of the Summer Intensive Program',
          time: '11:30AM - 11:45AM',
          duration: '15',
          actType: 'coreskill',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/1uFVd5LGADLVBmFz4Ihif2tVp9WcAS90s_cbdYIOQfRs/edit?usp=sharing',
            },
          ],
        },
        {
          name: 'BREAK',
          time: '11:45AM - 12:00PM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Roles and Responsibilities',
          time: '12:00PM - 12:30PM',
          duration: '30',
          actType: 'coreskill',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/1aiYgg0FxW6Q9PZJ0suDtmy3fMe6q6PBXwObFxLU2rBs/edit?usp=sharing',
            },
          ],
        },
        {
          name: 'Human Resources (Operations)',
          time: '12:30PM - 01:00PM',
          duration: '30',
          actType: 'coreskill',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/1TNeIUOxhvI_6z6sS5vHrIg9-Ti1Twj1OeWl3Vcvl_Vk/edit?usp=sharing',
            },
          ],
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
          links: [
            {
              displayText: 'ASC Learning Management System',
              linkURL: 'http://learning.allstarcode.org/',
            },
          ],
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
          links: [
            {
              displayText: 'ASC Learning Management System',
              linkURL: 'http://learning.allstarcode.org/',
            },
          ],
        },
        {
          name: 'Orientation Intro',
          time: '03:45PM - 04:00PM',
          duration: '15',
          actType: 'project',
          links: [
            {
              displayText: 'Run of Show',
              linkURL:
                'https://docs.google.com/document/d/102iIOo5rV7x8EL3nfC6n0J-jMGcqHuNX6RKlkR-I4SI/edit?usp=sharing',
            },
          ],
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
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/1Y1o0JetV1_uroe_rWObQwtKGAwvqnUSE3eJVWB11Ans/edit?usp=sharing',
            },
          ],
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
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://drive.google.com/file/d/1wrHLUdWNBdZj85HL6wmVFyRQCA6dWmzs/view?usp=sharing',
            },
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
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://drive.google.com/file/d/1wrHLUdWNBdZj85HL6wmVFyRQCA6dWmzs/view?usp=sharing',
            },
          ],
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
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/1xXHFVDr3IaWPyGLjpHc2CjHp3GqakkdqFFulX46ohRY/edit?usp=sharing',
            },
          ],
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
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/1wx0mPyg1L-Csn3SHXa3X7l1csSidvWvLseQEjyPY1dg/edit?usp=sharing',
            },
          ],
        },
        {
          name: 'Overall Onboarding',
          time: '02:30PM - 03:30PM',
          duration: '60',
          actType: 'lecture',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/1eLq7z8coFmy3rDwXAgpxpJbhY4OMR8ATLHtOTXiGJw0/edit?usp=sharing',
            },
          ],
        },
        {
          name: 'Tools for the Job',
          time: '03:30PM - 04:30PM',
          duration: '60',
          actType: 'lecture',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/14r038ckVsPD7Ag0W2U8RqYtK8V71m-P9Xa7wCFoqJAE/edit?usp=sharing',
            },
          ],
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
          links: [],
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
          links: [
            {
              displayText: 'Orientation Deck',
              linkURL:
                'https://docs.google.com/presentation/d/1mMZuKIoetTeu_3ncbmyY-D_0w2Cf91B2ZXXxSQ17rbg/edit?usp=sharing',
            },
          ],
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
          links: [
            {
              displayText: 'Incoming Instructors Forum #1',
              linkURL:
                'https://docs.google.com/document/d/12zdyePDCxTUgyy3vgX9wQn8gYGQhm6SvK3am9lt_-Tk/edit?usp=sharing',
            },
            {
              displayText: 'Incoming Instructors Forum #2',
              linkURL:
                'https://docs.google.com/document/d/1PV60_qCT0OZLwBxo22qwHbZipc505g_fAWFdJUxPI0c/edit?usp=sharing',
            },
            {
              displayText: 'Returning Instructors Forum',
              linkURL:
                'https://docs.google.com/document/d/14wWSMM_lQqfn166UyIIpnGZ1I5IW5XyOAMG43YVExQo/edit?usp=sharing',
            },
          ],
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
          links: [],
        },
        {
          name: 'BREAK',
          time: '10:30AM - 10:45AM',
          duration: '15',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Classroom Management w/ Alika (Concentration)',
          time: '10:45AM - 11:45AM',
          duration: '60',
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
          name: 'Scholar Services',
          time: '03:15PM - 03:30PM',
          duration: '15',
          actType: 'coreskill',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/1n0pJB2kMzDxd_FLxYFYOmghFjHn7urEouDFC3SXM3Us/edit?usp=sharing',
            },
          ],
        },
        {
          name: 'Deficit vs. Asset-Based Approach',
          time: '03:30PM - 04:00PM',
          duration: '30',
          actType: 'coreskill',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/12Djq8SV1oyDk4ExBgKOkhB0IwKjQ-ZjFSZwfwPu9Fgg/edit?usp=sharing',
            },
          ],
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
          links: [],
        },
        {
          name: 'Exit Survey',
          time: '11:00AM - 11:15AM',
          duration: '15',
          actType: 'survey',
          links: [],
        },
        {
          name: 'Intakes w/ Melissa (Concentration)',
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
          name: 'Navigating the Drive',
          time: '12:30PM - 01:45PM',
          duration: '75',
          actType: 'lecture',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/18kRJREH6T-tRXL5QqZS6kyy_Uy1i0bjRG5-i4f9UNu0/edit?usp=sharing',
            },
          ],
        },
        {
          name: 'LUNCH',
          time: '01:45PM - 02:45PM',
          duration: '60',
          actType: 'misc',
          links: [],
        },
        {
          name: 'Intersectionality w/ Lakimja (Concentration)',
          time: '02:45PM - 03:45PM',
          duration: '60',
          actType: 'lecture',
          links: [],
        },
        {
          name: 'Day In The Life',
          time: '03:45PM - 04:15PM',
          duration: '30',
          actType: 'lecture',
          links: [
            {
              displayText: 'Presentation Slides',
              linkURL:
                'https://docs.google.com/presentation/d/16Br5RmzejpY1QrqQJbl2swvwHrRhmA2WHVbEk2ZlT2Y/edit?usp=sharing',
            },
          ],
        },
        {
          name: 'Final Q&A',
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
          links: [{ displayText: 'Join here', linkURL: 'https://kahoot.it/' }],
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
  {#if data.length > 0}
    {#each data as day}
      <li>
        <div
          id={`SIC-day-${day.daynum}-header`}
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
  {/if}
  <li class="sic-all-links all-links">
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
