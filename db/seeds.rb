members = Member.create [ {fio: "AAAA", phone: "+231231212"}, {fio: "AAAA", phone: "+231231212"}]
workers = Worker.create [
    {fio:"Worker1 Worker1",role:"helper",phone:"89218510645"},
    {fio:"Worker2 Worker2",role:"washing",phone:"83453548645"}
]
sponsors = Sponsor.create [{company_name:"company1",phone:"+73285295"}, {company_name:"company2",phone:"+478357289"}]

places = Place.create [{name: "Южный вокзал"}, {name: "Северный вокзал"}]

events = Event.create [
                 {
                     date: Time.now,
                     title: 'Собрание учкома',
                     place: places.sample,
                     workers: workers,
                     members: members,
                     sponsors: sponsors
                 },
                 {
                     date: Time.now+1.day,
                     title: 'Кормление собак грудью',
                     place: places.sample,
                     workers: workers,
                     members: members,
                     sponsors: sponsors
                 },
             ]

Incoming.create [
                    {sponsor_id: 1,sum:1000, event_id:1},
                    {sponsor_id:2,sum:2000,event_id:2}
                ]

Outcoming.create [
                     {object:"Trash",sum:500, event_id:1},
                     {object:"Place",sum:1000,event_id:2}
                 ]
