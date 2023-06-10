import 'model.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'objectbox.g.dart'; // created by 'flutter pub run build_runner build'

class ObjectBox {
  late final Store _store;

  late final Box<Song> _songBox;
  late final Box<Book> _bookBox;

  ObjectBox._create(this._store) {
    _songBox = Box<Song>(_store);
    _bookBox = Box<Book>(_store);

    if (_songBox.isEmpty() && _bookBox.isEmpty()) {
      _putDemoData();
    }
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store =
        await openStore(directory: p.join(docsDir.path, 'obx-example'));
    return ObjectBox._create(store);
  }

  List<Song> getAllSongs() => _songBox.getAll();
  Future<List<Song>> getAllSongsAsync() => _songBox.getAllAsync();
  int getNumberSongs() => _songBox.count();

  List<Book> getAllBooks() => _bookBox.getAll();
  Future<List<Book>> getAllBooksAsync() => _bookBox.getAllAsync();
  int getNumberBooks() => _bookBox.count();

  void _putDemoData() {
    Book bookCommunion = Book('Communion');
    Book bookAdoration = Book('Adoration');
    Book bookAdvent = Book('Advent');
    Book bookGospelAcclamation = Book('Gospel Acclamation');
    Book bookOurFather = Book('Our Father');
    Book bookCreed = Book('Creed');
    Book bookPresentationGifts = Book('Presentation of Gifts');
    Book bookEntrance = Book('Entrance');
    Book bookVocationHymns = Book('Vocation Hymns');
    Book bookSanctus = Book('Sanctus');
    Book bookDismissal = Book('Dismissal');
    Book bookPeace = Book('Peace');
    Book bookPraiseWorship = Book('Praise and Worship');
    Book bookPsalms = Book('Psalms');
    Book bookChristmas = Book('Christmas');
    Book bookGlory = Book('Glory');
    Book bookMary = Book('Mary');
    Book bookPenitencialRite = Book('Penitencial Rite');
    Book bookHolySpirit = Book('Holy Spirit');
    Book bookWeddingHymns = Book('Wedding Hymns');
    Book bookBibleProcession = Book('Bible Procession');
    Book bookThanksgiving = Book('Thanksgiving');
    Book bookOffertory = Book('Offertory');
    Book bookLentHolyWeekEaster = Book('Lent-Holy Week-Easter');
    Book bookGeneral = Book('General');
    Book bookSaintJoshep = Book('Saint Joshep');
    Book bookAgnusDei = Book('Agnus Dei');
    Book bookKyrieEleison = Book('Kyrie Eleison');

    Song songCommunion1 = Song('Los pies del mensajero', '''
El Señor eligió a sus discípulos,
los mandó de dos en dos.

Es hermoso ver bajar de la montaña,
los pies del Mensajero de la Paz.

Los mandó a las ciudades,
y lugares donde iba a ir El.

La cosecha es abundante,
les dijo el Señor al partir.

Pídanle al dueño del campo,
que envíe más obreros a la mies.

Al entrar en una casa,
saluden anunciando la paz.

Cuando alguien a ustedes los reciba,
apoyen en Él vuestra paz.

Cuando entren y no los reciban,
la paz a ustedes volverá.

El Reino de Dios está cerca,
a todos se les anunciará.

Los que a ustedes los reciban,
me habrán recibido a mí.

Quien recibe mi palabra,
recibe al que me envió.
''');
    Song songCommunion2 = Song('Sons of God', '''
Sons of God, hear His holy word,
Gather round, the table of the Lord.
Eat His body, drink his blood,
and we'll sing a song of Love,
allelu, allelu, allelu, alleluia.
Brother's sisters we are one,
and our life has just begun.
In the spirit we are one,
we can live forever.
Shout together to the Lord,
who has promised our reward,
happiness a hundred fold,
and we'll live forever.
Jesus gave us a new command,
that we love our fellow man,
till we reach the promised land,
where will live forever.
If we want to live with Him,
we must also die with Him,
die to selfishness and sin,
and we'll live forever.
''');
    Song songCommunion3 = Song('El aire que respiro', '''
El aire que respiro,
el pan que me alimenta,
la risa de los niños,
el resplandor del sol,
el canto de las aves,
los besos de una madre,
la brisa del otoño,
el gozo de soñar.

Todos estos dones,
nos los envía el Señor,
desde el cielo, (x2)
llenos de su amor.

Mil gracias buen maestro,
por lo que nos has dado,
el sol, el agua, el grano,
la vida, el universo,
desde nuestra pobreza,
nada podemos darte,
más te lo agradecemos,
de todo corazón.
''');
    Song songCommunion4 = Song('Nakikaribisha Yesu', '''
Nakukaribisha Yesu wangu Ukae moyoni mwangu Bwana,
Nakukaribisha Yesu wangu chakula chenye uzima

Nakukaribisha Yesu wangu Ukae moyoni mwangu Bwana,
Nakukaribisha Yesu wangu kinywaji chenye uzima

Unishibishe chakula cha uzima, 
ninyweshe kinywaji, 
kinywaji safi cha ro ho

1. Mwili wako ni chakula kinacho iburudisha roho yangu, 
   Yesu karibu moyoni mwangu, 
   ukae nami daima

2. Damu yako ni kinywaji kinacho iburudisha roho yangu, 
   Yesu karibu moyoni mwangu, 
   ukae nami daima

3. Kwa mwili na damu yako ee Yesu tunapata uzima tele, 
   Yesu karibu moyoni mwangu, 
   ukae nami daima
''');
    Song songCommunion5 = Song('Mulungu Wathu Wopatsa', '''
Mulungu wathu wopatsa chifukwa amatikonda ayenera kumthokoza.
 
CHORUS 1-Ambuye tikuti zikomo ambuye tikuthokoza chifukwa cha mphatso ya moyo ambuye zaulere zanu ambuye tikuthokoza talandira.
CHORUS 2-Mmawa mmawa mbalame za kutchire zipereka ulemu ndi kumthokoza iye ayenera kumthokoza.
 
Ndi mwa thupi ndi mwa mzimu sitingakhale ndi chinthu chosadzera kwa Mulungu.
 
Mudalenga tonse ndithu lero otisunga ndinu simudzatimana kanthu.
 
Yesu adatiwombola adatifera pamtanda tiyenera  kumthokoza.
 
Yesu kwanu m'paradizo mudatikonzera malo tikause ndi anjero.
''');
    Song songCommunion6 = Song('What a Friend', '''
What a Friend we have in Jesus,
All our sins and griefs to bear!
What a privilege to carry
Everything to God in prayer!

O what peace we often forfeit,
O what needless pain we bear,
All because we do not carry
Everything to God in prayer!

Have we trials and temptations?
Is there trouble anywhere?
We should never be discouraged,
Take it to the Lord in prayer.

Can we find a friend so faithful
Who will all our sorrows share?
Jesus knows our every weakness,
Take it to the Lord in prayer.

Are we weak and heavy-laden,
Cumbered with a load of care?
Precious Savior, still our refuge—
Take it to the Lord in prayer;

Do thy friends despise, forsake thee?
Take it to the Lord in prayer;
In His arms He'll take and shield thee,
Thou wilt find a solace there.
''');
    Song songCommunion7 = Song('Il Pane', '''
Dove troveremo tutto il pane,
per sfamare tanta gente,
dove troveremo tutto il pane,
se non abbiamo niente.

Io possiedo solo cinque pani,
io possiedo solo due pesci,
io possiedo un soldo soltanto,
io non possiedo niente.

Io so suonare la chitarra,
io so dipingere fare poesie,
io so scrivere e penso molto,
io non so fare niente.

Io sono un tipo molto bello,
io sono intelligente,
io sono molto furbo,
io non sono niente.

Dio ci ha dato tutto il pane,
per sfamare tanta gente,
dio ci ha dato tutto il pane,
anche se non abbiamo niente.
''');
    Song songCommunion8 = Song('Cosas de locos', '''
Si pienso en lo que quieres que yo haga, 
si tengo que hacer caso a tus palabras, 
si quieres que te diga lo que pienso, 
que es de locos, que es de locos.

Si quieres que me quite las cadenas 
que me hacen sentir seguro aquí abajo, 
es como si me vaciaras las venas, 
estás loco, estás loco.

Sólo te pido fuerzas para hacer 
de mi debilidad un férreo vendaval. 
Desde el convencimiento en que tal vez 
hoy todo puede ser de nuevo realidad, 
que ya estás al llegar.

De todas formas sé que es necesario 
andar contracorriente en esta tierra, 
y que en el fondo merece la pena 
estar loco, estar loco.
''');
    Song songCommunion9 = Song('Fill My House Unto The Fullest', '''
Fill my house, unto the fullest,
eat my bread, and drink my wine,
the love I bear, is held from no one.
All I own and all I do I give to you.
Take my time, unto the fullest,
find in me, the trust you seek,
and take my hands, to you out
reaching.
Christ our Lord,
with love enormous,
from the cross, his lesson taught,
to love all, as I have loved you.
Join with me,
as one in Christ love,
may our hearts, all beat as one,
and may we give,
ourselves completely
''');
    Song songCommunion10 = Song('I Am the Bread of Life', '''
I am the bread of life,
He who comes to me shall not hunger. 
He who believes in me shall not thirst. 
No one can come to me unless the Father draws him.

And I will raise him up, and I will raise him up, and I will raise him up on the last day.

The bread that I will give, 
is my flesh for the life of the world, and he who eats of this bread,
he shall live forever, he shall live forever.

Unless you eat of the flesh of the Son of Man,
and drink of his blood, 
and drink of his blood, 
you shall not have life within you.

I am the resurrection.
I am the life. 
He who believes in me,
even if he die, 
he shall live forever.

Yes, Lord, I believe that you are the Christ,
the son of God who has come into the world....
''');
    Song songCommunion11 = Song('Uniondolee Dhambi Nitakase', '''
Uniondolee dhambi, nitakase, 
Unioshe niwe mweupe pe *2 

1. Nakiri makosa yangu, naziona dhambi zangu 
Unioshe niwe mweupe pe 

2. Mimi kweli mkosefu, tangu kuzaliwa kwangu 
Mwenye dhambi tangu tumboni mwa mama yangu 

3. Hivyo unafanya vyema, wewe unaponihukumi 
Una haki unaponiadhibu 

4. Wewe wataka unyofu, ule unyofu wa ndani 
Nifundishe hekima moyoni 

5. Niumbie moyo safi, na uweke ndani yangu, 
Roho mpya iliyo thabiti.
''');
    Song songCommunion12 = Song('Mimi Ni Mzabibu', '''
Mimi ni mzabibu,
mimi ni mzabibu,
nanyi mu matawi, yangu (x2)
nami kweli ni mzabibu

Kaeni ndani Yangu, 
nami ndani yenu,
kwani mu matawi, 
nami kweli ni mzabibu.

Nje yangu mimi, huwezi kuzaa, 
kwani mu matawi, 
nami kweli ni mzabibu.

Bila nguvu yangu,
hamwezi lolote,
kwani mu matawi ,
nami kweli ni mzabibu.
''');
    Song songCommunion13 = Song('''Dolce 'E Sentire''', '''
Dolce 'e sentire come nel mio cuore,
ora umilmente sta nascendo amore,
dolce 'e capire che non sono più solo,
ma che son parte di un'immensa vita.

Che generosa risplende intorno a me,
dono de Lui, del suo immenso amore!

Ci ha dato il cielo e le chiare stelle,
fratello sole e sorella Luna,
la madre terra con i fritti, i prati e i fiori,
il fuoco ei vento, l'aria e l'acqua pura,
fonte di vita per le sue creature.

Dono di Lui del suo immenso amore,
dono di Lui del suo immenso  amore!

Sia laudato nostro signore,
che ha creato l'Universo intero,
sia laudato nostro Signore,
noi tutti siam sue creature.

Dono di Lui del suo immenso amore,
beato chi lo serve in umiltà!
''');
    Song songCommunion14 = Song('Jesus me Dejó Inquieto', '''
Jesucristo me dejó inquieto,
Su palabra me llenó de luz;
Nunca más yo pude ver el mundo,
sin sentir aquello que sintió Jesús.

Yo vivía muy tranquilo y descuidado,
y pensaba haber cumplido mi deber,
muchas veces yo pensaba equivocado,
contentarme con la letra de la ley.
Más después que mi Señor pasó,
nunca más mi pensamiento descansó.

Yo creía estar seguro y realizado,
y dejaba descansar mi corazón,
y siguiendo por la vía equivocada,
cosechaba en mi vida una ilusión.
Más después que mi Señor pasó,
mi ilusión y mi engaño se acabó.

Sigo a veces intranquilo por la vida,
sin respuestas al que viene a preguntar;
Mucha gente aún se encuentra adormecida,
y sin ganas de saber y de llegar.
Más yo sé que Él volverá a pasar,
y el descanso en inquietud,
Él va a cambiar.
''');
    Song songCommunion15 = Song('Oh! The Word of my God', '''
Oh! The word of my God,
deep within my being,
oh! The word of my God,
you have filled my mind (x2)
 
Before I formed you in the womb,
I knew you through and through,
I chose you to be mine.
Before you left your mother's side,
I called to you, my child, to be my sign.
 
I know that you are very young,
but I will make you strong,
I'll fill you with my word;
And you will travel through the land,
fulfilling my command,
which you have heard.
 
And everywhere you are to go,
my hand will follow you;
You will not be alone.
In all the dangers that you fear,
you'll find me very near,
your words my own.
''');
    Song songCommunion16 = Song('El Señor Dios nos Amó', '''
El Señor Dios nos amó,
como nadie amó jamás.
Él nos guía como estrella,
cuando no existe la luz.
El nos da todo su amor,
mientras la fracción del pan,
es el pan de la amistad,
el pan de Dios:

Es mi cuerpo: tomad y comed
Es mi sangre: tomad y bebed,
pues yo soy la vida.
Yo soy el amor.
Oh, Señor, condúcenos hasta tu amor.

El Señor Dios nos amó,
como nadie amó jamás.
Sus paisanos le creían,
hijo de un trabajador.
Como todos, El también
ganó el pan con su sudor,
y conoce la fatiga y el dolor. 
''');
    Song songCommunion17 = Song('Lord, You Have Come to the Sea Shore', '''
Lord, you have come to the sea shore,
neither searching,
for the rich nor the wise,
desiring only, that I should follow.
 
Oh, Lord, with your eyes set upon me,

gently smiling,
you have spoken my name.
All I long for,
I have found by the water,
at your side,
I will seek other shores.
 
Lord, see my goods,
my possessions;
in my boat you find no power,
no wealth,
will you accept, then,
my nets, my labour.
 
Lord, take my hands and direct them,
help me spend myself,
in seeking the lost,
retuning love for,
the love you gave me.
 
Lord, as I drift on the waters,
be the resting place,
of my restless heart,
my life's companion,
my friend my refuge.
''');
    Song songCommunion18 = Song('My Lord (Communion Hymn)', '''
My Lord, he died for a kingdom,
to redeem us from our sin.
Now my people, don't you weep. He has Risen from His sleep. 
He lives again. Alleluia...

Sing alleluia, the Lord is risen, He is risen indeed, alleluia!

My Lord come forth like the 
morning with the splendour of the sun, 
came triumphant from the tomb,
from the Darkness of the tomb, the victory won. Alleluia.....

My Lord united our mountains, with the everlasting Hills.
Now the seasons and the sea, 
sing His song of victory,
rocks and hills and plains, Alleluia.....

My Lord renewed all creation, 
that had waited late and long. Now we all with one accord live, and love the Risen Lord. 
This is our song. Alleluia....
''');
    Song songCommunion19 = Song('Anayekula Mwili Wako', '''
Anayekula mwili wako,
na anywaye damu yako,
anaishi ndani yako, 
ye ataishi milele.

Yesu wangu nakuomba, nishibishe na mwilio,
nayo  damu yako ninywe,
japo sistahili mimi.

Ndani yangu mwokozi yumo, 
kwa mwili na damu yake, 
ni rafiki yangu kweli,
nami sitamwacha kamwe.

Yesu wangu, unibariki,
nifundishe njia zako,
nipe moyo wa shukrani,
nitembee nawe leo.

Alikuja kutuokoa,
tuliokuwa dhambini,
kwa kifo chake msalabani,
naye katupa uzima.
''');
    Song songCommunion20 = Song('Gracias por tu Don', '''
No fuiste tú quien me escogió,
fui Yo quien te llamé a ti,
para que dieras frutos de verdad,
frutos de gozo y de paz.
Para seguir mis pasos, ven,
renuncia a lo que tienes hoy,
dáselo todo a quien nada probó,
deja tu yo y toma la cruz.

Señor Jesús, que confías en mí, 
y me envías a ser luz y a ser señal,
gracias por tu don, gracias Señor.

Vete y predica con tu acción,
con la palabra y con tu ser,
la buena nueva de servicio y paz,
no tengas miedo te hablaré,
yo te escogí para ser sal,
para ser luz e iluminar,
que todos vean a mi padre en ti,
de los sencillos se hace ver.

No sirve para mi misión,
El que comienza a caminar
Y aún recuerda aquello que dejó
Pues no podrá servir a dos.
Pon tu confianza en Dios y en mi
Ya que mi gracias bastará
Serás más fuerte en la debilidad
Que Yo en tu barro me quedé.
''');
    Song songCommunion21 = Song('The Last Supper', '''
Look at all my trials and tribulations,
sinking in a gentle pool of wine,
don't disturb me now I can see,
the answer till this evening,
is this morning life is fine.

Always hoped that I'd be an apostle,
knew that I would make it if I tried,
then when we retire we can write the gospel,
so that they'll still talk about us when we've died.
 
Todos los problemas se sumergen,
en el vino al tiempo de cenar,
no me molestéis veo la respuesta,
esta noche nada malo va a pasar.
 
Siempre desee ser un apóstol,
y contar al mundo mi verdad,
escribirla en los Evangelios,
para así pasar a la posteridad.
 
L'aliment que hi ha en aquesta taula,
ens dona la forca d'estimar,
es el mateix cos i la sang de Crist,
que ens uneix a tots, 
com a germans.
''');
    Song songCommunion22 = Song('Hii Ni Karamu', '''
Hii ni karamu, uzima wa roho, yumo Bwana Yesu,
kwa mwili wake, 
kweli na damu yake.

Alisema Bwana;
twaeni wote, 
mule ni mwili wangu.

Alisema Bwana; 
twaeni wote,
munywe ni damu yangu.

Nasi twasadiki; 
ni mwili wake kweli,
na damu yake.

Alituamuru; 
kufanya hivyo,
kwa ukumbusho wake.

Tukifanya hivyo; 
tunatangaza, 
kifo cha Bwana wetu.

Huu ni upendo; 
aliotuachia,
mkombozi wetu.
''');
    Song songCommunion23 = Song('Con vosotros está', '''
Con vosotros está
y no le conocéis
con vosotros está,
su nombre es “El Señor”

Su nombre es “El Señor” y pasa hambre,
y clama por la boca del hambriento,
y muchos que lo ven pasan de largo,
acaso por llegar temprano al templo.

Su nombre es “El Señor” y sed soporta,
y está en quien de justicia, va sediento, 
y muchos que lo ven pasan de largo,
a veces ocupados en sus rezos.

Su nombre es “El Señor” y está desnudo,
la ausencia del amor hiela sus huesos, 
y muchos que lo ven pasan de largo,
seguros y al calor de su dinero.

Su nombre es “El Señor” y enfermo vive,
y su agonía es la del enfermo,
y muchos que lo saben no hacen caso,
tal vez no frecuentaba mucho el templo,

Su nombre es “El Señor” y está en la cárcel,
está en la soledad de cada preso,
y nadie lo visita, y hasta dicen:
“tal vez Ese no era de los nuestros”.

Su nombre es “El Señor”: el que sed tiene.
Él pide por la boca del hambriento,
está preso, está enfermo, está desnudo,
pero Él nos va a juzgar por todo eso.
''');
    Song songCommunion24 = Song('Let us break bread', '''
Let us break bread together on our
knees. (x2)
When I fall on my knees,
with my face to the rising sun,
o Lord have mercy on me.
Let us drink wine together on our
knees. (x2)
Let us praise God together on our
knees. (x2)
Let us thank God together on our
knees. (x2)
''');
    Song songCommunion25 = Song('Mwili Wa Bwana Yesu', '''
Mwili wa Bwana Yesu, chakula, cha mbingu,
ni chakula cha roho chenye uzima.
Hima uwe nasi Ee Bwana Yesu,
ukatushibishe chakula bora,
ni chakula cha roho chenye uzima.

Yesu alituambia yeyé ni chakula,
nichakula cha roho chenye uzima.
Anilaye mimi na kunywa damu,
anao uzima wa siku zote,
ni chakula cha roho chenye uzima.

Yesu alituambia, kuwa tumpokee,
ni chakula cha roho chenye uzima.
Sote twaamini ni mwili wake, 
pia twaamini ni damu yake,
ni chakula cha roho chenye uzima.

Hii ndiyo karamu aliotuachia,
ni chakula cha roho chenye uzima.
Ee Bwana Mwokozi, tunakuomba,
kwa chakula hiki tuimarike,
ni chakula cha roho chenye uzima.
''');
    Song songCommunion26 = Song('Pescador', '''
Pescador, que al pasar
por la orilla del lago,
me viste secando mis redes al sol.
Tu mirar, se cruzó con mis ojos cansados,
y entraste en mi vida,
buscando mi amor.

Pescador, en mis manos
has puesto otras redes,
que puedan ganarte,
la pesca mejor,
y al llevarme contigo en la barca,
me nombraste, Señor, pescador.

Pescador, entre tantos que había en la playa,
tus ojos me vieron;
tu boca me habló.
Y a pesar, de sentirse mi cuerpo cansado,
mis pies en la arena,
siguieron tu voz.

Pescador, manejando
mis artes de pesca,
en otras riberas,
mi vida quedó,
al querer que por todos,
los mares del mundo,
trabajen mis fuerzas,
por Ti, pescador.

Pescador, mi trabajo
de toda la noche,
mi dura faena,
hoy nada encontré,
pero Tú que conoces
los mares profundos,
compensa si quieres,
mi triste labor.
''');
    Song songCommunion27 = Song('Al tuo Santo altar', '''
Al Tuo santo altar mi appresso,
o Signor mia gioia e mio amor.

O signore, che scruti il mio cuore,
dal maligno mi salvi il Tuo amore.

Tu sei forza, sei vita immortale,
perche triste camino fra il mal?

Mi risplenda la luce del ve,
e mi guidi sul retto sentir.
''');
    Song songCommunion28 = Song('Come to the water', '''
O let all who thirst,
let them come to the water,
and let all who have nothing,
let them come to the Lord;
Without money, without price,
why should you pay the price, except for the Lord.
 
And let all who seek,
let them come to the water,
and let all who have nothing,
let them come to the Lord;
Without money, without strife,
why should you spend your life, except for the Lord.
 
And let all who toil,
let come to the water.
And let all who are weary,
let them come to the Lord;
all who labour, without rest,
how can your soul find rest, 
except for the Lord.
 
And let all the poor,
let them come to the water,
bring the ones who are laden, bring them all to the Lord;
bring the children, without might,
easy the load and light,
come to the Lord.
''');
    Song songCommunion29 = Song('Are you washed in the blood of the Lamb?', '''
Have you been to Jesus for the
cleansing power?
Are you washed in the blood of the
Lamb?

Are you fully trusting in his grace
this moment?
Are you washed in the blood of the
Lamb?
Are you washed in the blood?
In the soul-cleansing blood of the
Lamb?
Are your garments spotless?
Are they white as snow?
Are you washed in the blood of the
Lamb?
Are you walking daily by the
Saviour's side?
Are you washed in the blood of the
Lamb?
Do you rest each moment in the
Crucified?
Are you washed in the blood?
When the bridegroom come will
your robes be white?
Are you washed in the blood of the
Lamb?
Will your soul be ready for the
mansion's bright?
Are you washed in the blood of the
lamb?
Lay down the garments that are
stained within.
Are you washed in the blood of the
Lamb?
There is a fountain for soul of the
unclean,o be washed in the 
blood of the Lamb.
''');
    Song songCommunion30 = Song('Gather at the river', '''
Shall we gather at the river,
where the bright angel feet have trod,
with its crystal tide forever, flowing by the throne of God?
Yes, we will gather at the river, the beautiful, the beautiful river, 
gather by the saints at the river, that flows by the throne of God.

On the margin of the river,
washing up its silver spray.
We will walk and worship ever,
all the happy golden day.

E've we reach the shining river,
lay we every burden down,
grace our spirit will deliver,
and provide a robe and crown.

Soon we will reach the shining river,
soon our pilgrimage will cease,
soon our happy hearts will quiver,
with the melody of peace.
''');
    Song songCommunion31 = Song('Aulaye mwili wangu', '''
Aulao mwili wangu, na kuinywa damu yangu,
(asema bwana) hukaa ndani yangu,
nami hukaa ndani yake (x2)

Aulaye mwili wangu, na kuinywa damu yangu,
ana uzima wa milele

Njooni enyi wenye njaa,
njooni enyi wenye kiu,
njooni kwangu niwashibishe.
''');
    Song songCommunion32 = Song('Come let us share', '''
Come lets share in the banquet of
the Lord,
In the Blessed Sacrament,
Come lets share in the supper of
the Lord,

In the Blessed Sacrament.
Eat the bread and drink the wine,
Flesh and blood of the Lord divine,
Share His life, it is yours and mine,
For we are one in His design.
Come lets share in the passion of
the Lord,
In the Blessed Sacrament,
Come lets share the resurrection of
the Lord,
In the Blessed Sacrament.
Come lets share in the ascension of
the Lord,
In the Blessed Sacrament,
Come lets share our union with the
Lord,
In the Blessed Sacrament.
Come lets share in the life of the
Lord,
In the Blessed Sacrament,
Come let;s share in the love of the
Lord,
In the Blessed Sacrament.
''');
    Song songCommunion33 = Song('Ekaristi Takatifu', '''
Ekaristia takatifu ni mwili na damu yake Yesu
Aliyesulubiwa msalabani ili kutukomboa
Jioni Alhamisi katwaa mkate,
(Pia) Divai kawapa wanafunzi
(Ili) wanywe kwa ukumbusho wake

Njooni njooni wateule (wote)
Njooni tumwabudu Kristu katika sakramenti
(Ndugu) njooni njooni tumwabudu Yesu
Njooni njooni tumwabudu Kristu katika sakramenti

1. Tujongee taratibu tukale karamu takatifu
   Aliyotuachia Yesu Kristu kwa ukarimu wake
   Chakula cha uzima [Na] kinywaji cha roho
   (Hili) ni fumbo alilotuachia
   Tuadhimishe kwa ukumbusho wake

2. Ekaristi takatifu huleta neema ya Mbinguni,
   Huleta mapatano kati yetu naye muumba wetu
   Walio na imani wanayo baraka
   (Hadi) milele wanalo hakikisho
   (Lile) la kushiriki kwa utukufu wake
''');
    Song songCommunion34 = Song('Un Mandamiento nuevo', '''
Un mandamiento nuevo
nos da el Señor:
que nos amemos todos como El nos amó.
 
Como a mí me ama el Padre,
así yo los he amado.
La señal de los cristianos,
es amarse como hermanos.
 
El que no ama a sus hermanos,
miente si a Dios dice que ama.
Donde existe amor fraterno,
Cristo está y está su Iglesia.
 
Amar es estar al lado,
del que es pobre y olvidado.
No amemos de palabra,
sino de obra y de verdad.
 
Cristo luz, verdad y vida,
al perdón y amor invita.
Perdonemos al hermano,
como Cristo ha enseñado.
 
En Jesús somos hermanos,
si de veras perdonamos.
Al comer el mismo pan,
en unión siempre vivamos.
 
En la vida y en la muerte,
Dios nos ama para siempre.
Del amor, fe y esperanza,
el amor es lo más grande.
''');
    Song songCommunion35 = Song('Guide Me O Thou Great Jehovah', '''
Guide me, O Thou great Jehovah,
Pilgrim through this barren land;
I am weak, but Thou art mighty,
Hold me with Thy powerful hand.
Bread of heaven, Bread of heaven,
Feed me now and evermore;
Feed me now and evermore.

Open now the crystal fountain,
Whence the healing stream doth flow;
Let the fire and cloudy pillar
Lead me all my journey through.
Strong Deliv'rer, strong Deliv'rer,
Be Thou still my Strength and Shield;
Be Thou still my Strength and Shield.
''');
    Song songCommunion36 = Song('En su mesa hay amor', '''
El Señor nos ha reunido
Junto a Él,
El Señor nos ha invitado
a estar con Él.
En su mesa hay amor,
la promesa del perdón,
y en el vino y pan,
su corazón. (x2)

Cuando, Señor, tu voz,
llega en silencio a mí,
y mis hermanos me hablan de ti.
Sé que a mi lado estás,
te sientas junto a mí,
acoges mi vida y mi oración.

El Señor nos ha reunido
Junto a Él,
El Señor nos ha invitado
a estar junto a Él.
En su mesa hay amor,
la promesa del perdón,
y en el vino y pan,
su corazón (x2)

El Señor nos ha reunió con Él.
''');
    Song songCommunion37 = Song('Mulungu wathu mbuye wathu', '''
Mulungu wathu mbuye wathu
Dzina lanu lalikulu
Inabuka mbiri yake
Kumwamba ndi pansi ponse
Litchulidwa ndi tiana
Takuyamba kulankhula
Manyazi agwire anthu
Okana kutama inu
 
Timaona dzuwa mwezi,
Thambo la mwamba nyenyezi
Zonse zili ntchito zanu
Zonse mudzisunga inu
 
Koma ndithu kopambana
Nafe anthu mukondana
Mutisunga, mutilera
Nafe mukonda kukhala.
''');
    Song songCommunion38 = Song('Hamlaha hamrook', '''

Hamlaha, hamrook ami liman ain kolen
Atu ba hasoru ita boot
Ita boot nu'udar isin ho ran
Mak fo o nia kbi'it mai ami.  2X

SOLO
Ami simu ai han di'ak ne,e,
Ita tomak halibur hamutuk
Sura hamutuk isin lolon ida ne'e
Horik maromak nia hadomi.
''');
    Song songCommunion39 = Song('God and man at table are sat down', '''
Welcome all ye nobles saints of old,
as now before your very eyes
unfold,
the wonders all so long ago foretold.

God and man
at table are sat down (x2)
 
Elders, martyrs, all are falling down,
prophets, patriarchs are gath'ring
round;
what angels longed to see now man
has found.
 
Who is this who spreads the vict'ry
feast?
Who is this who makes our warring
cease?
Jesus risen, saviour, Prince of peace.
 
Beggars, lame and harlots also here;
repentant publicans are drawing
near;
wayward sons come home without
a fear.
 
Worship in the presence of the Lord,
with joyful songs, and hearts in one
accord,
and let our host at table be adored.
 
When at last this earth shall pass
away,
when Jesus and his bride are none
to stay,
the feast of love is just begun that
day.
''');
    Song songCommunion40 = Song('Cristo te necesita', '''
Cristo te necesita para amar, 
para amar,
Cristo te necesita para amar. (x2)

No te importen las razas ni el color de la piel,
ama a todos como hermanos y haz el bien. (x2)

Al que sufre y al triste dale amor, dale amor,
al humilde y al pobre dale amor.

Al que vive a tu lado dale amor, dale amor, 
al que viene de lejos dale amor.

Al amigo de siempre dale amor, dale amor,
al que piensa distinto dale amor.
''');
    Song songCommunion41 = Song('''Il Signore e' il mio Pastore''', '''
Il Signore 'e il mio pastore,
nulla manca ad ogni attesa
In verdissimi parti mi pasce
Mi disseta a placide acque

E' il ristoro dell'anima mia
In sentieri diritti mi guida
Per amore del santo suo nome
Dietro Lui mi sento sicuro

Pur se andassi per valle oscura,
non avrò a temerè alcun male,
perché sempre mi se vicino,
mi sostiene col tuo vincastro.

Quale mensa per me Tu prepari,
sotto gli occhi dei miei nemici,
e di olio mi ungi il capo,
il mio calice 'e colmo di ebbrezza!

Bontà e grazia mi sono compagne,
quanto dura il mio camino,
Io staro nella casa di Dio,
lungo tutto il migrare dei giorni.
''');
    Song songCommunion42 = Song('Hii ni Ekaristi', '''
1. Hii ni ekaristi, aliyotuachia
Bwana Yesu Kristu (Kristu)
Mkombozi wa dunia

{ (imbeni) Imbeni kwa furaha
(sifuni) Sifuni ekaristi
(alimo) Alimo Yesu Kristu (Kristu)
Alimo ni mzima } *2

2. Yesu katuonea, wema pia huruma
Alitupenda sana (sana)
Akatupa uzima

3. Jioni Alhamisi, alichukua mkate
Kaugeza mwili (mwili)
Kuleni mkaokoke

4. Pia alichukua, kikombe cha divai
Kaigeuza damu (damu)
Kunyweni mkaokoke

5. Walipokwisha kula, kawaosha miguu
Nimewapa mfano (mfano)
Fanyeni nanyi vile

6. Yesu mwili na damu, chakula cha uzima
Tujaliwe kupata (pata)
Uzima wa milele.
''');
    Song songCommunion43 = Song('The Lord is my sheperd', '''
The Lord is my shepherd,
I'll not want,
he makes me down to lie.
In pastures green,
he leadeth me,
the quiet waters by.
My soul he doth restore again,
and me to walk doth make.
Within the paths of righteousness,
even for His own name's sake.
Yea though I walk in the death's
dark valley,
yet will I fear no ill.

For Thou art with me and Thy rod,
and staff my comfort still.
My table Thou hath furnished,
in presence of my foes,
my head Thou dost with oil anoint,
my cup overflow.
Goodness and mercy all my life,
shall surely follow me,
and in Gods house for evermore,
my dwelling place shall be.
''');
    Song songCommunion44 = Song('Pescador de hombres', '''
Tú, has venido a la orilla,
no has buscado, ni a sabios ni a ricos,
tan solo quieres que yo te siga.

Señor, me has mirado a los ojos, 
sonriendo has dicho mi nombre.
En la arena, he dejado mi barca,
junto a ti buscaré otro mar.

Tú, pescador de otros mares,
ansia eterna, de almas que esperan.
Amigo bueno, que así te llaman.

Tú, sabes bien lo que tengo,
en mi barca no hay oro ni espadas,
tan solo redes y mi trabajo.

Tú, necesitas mis manos,
mi cansancio, que a otros descansen.
Amor que quiera seguir amando.

(Pescador de hombres en alemán)

Du bist am Ufer gestanden,
schautest nicht aus
nach Weisen noch Reichen,
nur eines willst du, 
dass ich dir folge.

Du Herr,
blicktest mir in die Augen,
riefest freundlich,
mich bei meinem Namen.
Dort am Strande
hab mein Boot ich gelassen,
um mit dir
neue Ufer zu seh'n.

Du Herr, du weisst was ich habe,
dort im Boot hab
kein Gold ich noch Waffen,
das Netz allein und
der Hände Arbeit.

Du Fischer andrer Gezeiten,
lang ersehnt und
''');
    Song songCommunion45 = Song('Ninakupenda Ewe Mwokozi wangu', '''
Ninakupenda Ewe Mwokozi wangu, rafiki yangu mpenzi wa moyo wangu
Ukae nami daima ndani yangu, nipate nguvu rohoni siku zote.

1a). Ninakutolea mwili na roho yangu, uzipe neema zako nipate nguvu,
 b). Nikae nikupendeze Mwokozi wangu, shetani muovu kamwe asinifwate.

2a). Nilinde niwe imara na mwenye nguvu, nisitumbukie tena katika dhambi,
 b). Unionyeshe yaliyo ya heri kweli, nipate kuishi kwa kumpendeza Bwana.

 
3a). Wewe uliye njia kweli na uzima, niongoze vyema daima siku zote,
 b). Uniangazie mwanga palipo giza, nifike kwa Mungu Baba kwa njia yako.
 
4a). Nakukaribisha Bwana moyoni mwangu, nijalie baraka zako Ewe Bwana,
 b). Hata siku ya mwisho itapowadia, niite mbinguni kwenye heri milele.
''');
    Song songCommunion46 = Song('Tan cerca de mí', '''
Tan cerca de mí, tan cerca de mí,
que hasta lo puedo tocar,
Jesús está aquí.

No busques a Cristo en lo alto,
ni lo busques en la oscuridad,
muy dentro de ti, en tu corazón,
puedes adorar a tu Señor.

Le hablaré sin miedo al oído,
le contaré las cosas que hay en mí,
y que sólo a El, le interesarán,
El es más que amigo para mí.

Míralo a tu lado por la calle,
caminando entre la multitud, 
muchos no lo ven, porque ciegos son, ciegos de ceguera espiritual.
''');
    Song songCommunion47 = Song('Aulaye Mwili Wangu', '''
Aulaye mwili wangu, na kuinywa damu yangu,
Hukaa ndani yangu, nami hukaa ndani yake.
1. Aulaye mwili wangu, na kuinywa damu yangu,
   Ana uzima wa milele
2. Njoni enyi wenye njaa, njooni enyi wenye kiu,
   Njoni kwangu niwashibishe
3. Aniaminiye mimi, na kushika nisemavyo,
   Nitamfufua siku ya mwisho
4.  Mlapo chakula hiki, mnywapo kinywaji hiki,
   Mwatangaza kifo cha Bwana.
''');
    Song songCommunion48 = Song('We come to your table', '''
We come, we come, we come to your table.
We come we come we come to your table.
Gentle Jesus, risen Lord
We come to your table 
With our hearts and so full of joy
We come to your table.
Bringing gifts of all we are.....
Gifts of life and love and joy.....
 
In your body we find life...........
life you give for us to share.....
 
In your body we are one.......... 
One with you and one another...
 
Jesus savior living Bread.........
Bread of heaven, Bread of hope..
''');
    Song songCommunion49 = Song('El viñador', '''
Por los caminos sedientos de luz,
levantándose antes que el sol,
hacia los campos que lejos están,
muy temprano se va el viñador.
 
no se detiene en su caminar,
no le asusta la sed ni el calor,
hay una viña que quiere cuidar,
una viña que es todo su amor.
 
Dios es tu amigo,
el viñador,
el que te cuida
de sol a sol.
Dios es tu amigo,
el viñador,
el que te pide
frutos de amor.
 
El te protege con un valladar,
levantado en tu derredor,
quita del alma las piedras del mal
y ha elegido la cepa mejor.
Limpia los surcos con todo su afán
y los riega con sangre y sudor,
dime si puede hacer algo más,
por su viña el viñador.

Por los caminos sedientos de luz,
levantándose antes que el sol,
hacia los campos que lejos están,
muy temprano se va el viñador.
Sólo racimos de amargo sabor,
ha encontrado en tu corazón,
dime si puede esperar algo más
de su viña el viñador.
''');
    Song songCommunion50 = Song('My God loves me', '''
My God loves me,
his Love will never end.
He rests within my heart,
for my God loves me.
His gentle hand,
he stretches over me,
though storm clouds threaten the
day,
he will set me free.
He comes to me,
in sharing bread and wine,
he brings me life that will reach,
past the end of time.
My God loves me,
his faithful love endures,
and I will live like a child,
held in love secure.
The joy of love,
as offerings we bring,
the pains of love will be lost,
in the praise we sing.
''');
    Song songCommunion51 = Song('Potu atonyama', '''
Potu atonyama, kinyami Yesu ekapolon,

Kinyami ekapolon nyangaya, ekapolon abunia anadisia...
Kinyami ekeyokon nyangaya, ekapolon abuni anakuja...
''');
    Song songCommunion52 = Song('Eucaristía milagro de Amor', '''
Pan transformado en el cuerpo de Cristo,
vino transformado en la sangre del Señor.

Cristo nos dice: 'Tomen y coman',
este es mi cuerpo, 
que ha sido entregado.

Eucaristía milagro de amor,
Eucaristía, presencia del Señor (x2)

Cristo en persona,
nos viene a liberar,
de nuestro egoísmo, 
y la división fatal.

Este alimento renueva nuestras fuerzas,
para caminar a la gran liberación.

Con este pan tenemos vida eterna,
Cristo nos invita, 
a la gran resurrección.

En la familia de todos los cristianos,
Cristo quiere unirnos en la paz y en el amor.

Cuando comulgamos nos unimos al Señor,
Formamos entre todos la familia del amor...
''');
    Song songCommunion53 = Song('Mwili wa Bwana Yesu', '''
1. Mwili wa Bwana Yesu, chakula cha mbingu
Ni chakula cha roho, chenye uzima

Hima uwe nasi ee Bwana Yesu
Ukatushibishe chakula bora
Ni chakula cha roho, chenye uzima 

2. Yesu alituambia, Yeye ni chakula
Ni chakula cha roho, chenye uzima

Anilaye mimi na kunywa damu 
Anao uzima wa siku zote
Ni chakula cha roho, chenye uzima 

3. Yesu alituambia, kuwa tumpokee
Ni chakula cha roho, chenye uzima

Sote twaamini, ni mwili wake 
Pia twaamini ni damu yake
Ni chakula cha roho, chenye uzima 

4. Hii ndiyo karamu, aliyotuachia
Ni chakula cha roho, chenye uzima

Ee Bwana Mwokozi tunakuomba 
Kwa chakula hiki tuimarike
Ni chakula cha roho, chenye uzima
''');
    Song songCommunion54 = Song('Nimeahidi Yesu', '''
1. Nimeahidi Yesu - kukutumikia
Wewe u Bwana wangu - u rafiki pia
Sitaogopa vita - wewe ndiwe mweza
Sitaiacha njia - ukiniongoza

Imbeni aleluya, aleluya, imbeni
Shangwe kwa Bwana Yesu, ndiye mweza wetu

2. Dunia i karibu -Bwana siniache
Na mengi majaribu -yako pande zote
Siku zote adui - ni ndani na nje
Bwana Yesu nivute - karibu na wewe

3. Nikusikie wewe Bwana - nenda nami Bwana
Kelele za dunia - ndizo nyingi sana
Nena kunihimiza - au kunionya
Nena nikusikie - mwenye kuniponya

4. Umewapa ahadi - wakufuatao
Kwenda uliko wewe - wawe huko nao
Nami nimeahidi - kukutumikia
Nipe neema Bwana - ya kukwandamia

5. Hatua zako Bwana - na nizikanyage
Wewe u mwenye nguvu - mimi ni mnyonge
Niongoze nivute - nishike daima
Mwishoni niwasili - mbinguni salama
''');
    Song songCommunion55 = Song('Toloma lotau kang', '''
Toloma lotau kang Yesu Kristo,  Alokomunio a  lo kiseni ayong, tolemaa ngakasecesea x2

1.- Eketimit ayong ilomuni iyong lotau kang
Tolimu iyong apei
Kiroit bon papa toyekesi ekatau

2.- Iriono Ekatau noi Kwa emuudu, 
Emam ajakij tani pei dae

3.- Inaakin iyon ekoni kwarasiya
Akon ajokis papa kisionoi ngakasecesea
''');

    Song songAdvent1 = Song('Maranatha come', '''
Maranatha! Come, O Christ the Lord.

I am the Root of Jesse and David's son.
The Radiant star of morning and God's own light.

The Spirit and the bride say; Come!
Let him who hears their voices say; come!

Yes, I come very soon! Amen!
Come, O Lord Jesus!
''');
    Song songAdvent2 = Song('Ven, ven Señor', '''
Ven, ven Señor, no tardes.
Ven, que te esperamos.
Ven, ven Señor, no tardes.
Ven pronto Señor.
 
El mundo muere de frío,
el alma perdió el calor,
los hombres no son hermanos,
el mundo no tiene amor.
 
Envuelto en sombría noche,
el mundo sin paz no ve,
buscando va una esperanza,
buscando, Señor, tu fe.
 
Al mundo le falta vida,
al mundo le falta luz,
al mundo le falta cielo,
al mundo le faltas Tú.
''');
    Song songAdvent3 = Song('Macht hoch die Tür', '''
Macht hoch die Tür, die Tor macht weit,
es kommt der Herr der Herrlichkeit,
ein König aller Königreich,
ein Heiland aller Welt zugleich,
der Heil und Leben mit sich bringt,
derhalben jauchzt, mit Freuden singt.
Gelobet sei mein Gott,
mein Schöpfer reich an Rat. 
''');
    Song songAdvent4 = Song('Es kommt ein Schiff geladen', '''
Es kommt ein Schiff, geladen
bis an den höchsten Bord,
trägt Gottes Sohn voll Gnaden
des Vaters ewigs Wort.

Das Schiff geht still im Triebe,
es trägt ein teure Last;
das Segel ist die Liebe,
der Heilig Geist der Mast. 
''');

    Song songGospelAcclamation1 = Song('Escucha tú', '''
Escucha tú la palabra de Dios,
no sólo con el oído, 
también con el corazón.
Escucha tú la palabra de Dios,
estate bien atento a su voz.
''');
    Song songGospelAcclamation2 = Song('Sing Alleluia', '''
Sing alleluia to the Lord,
sing alleluia to the Lord,
sing alleluia, sing alleluia,
sing alleluia to the Lord.
 
Canta aleluya al Señor,
canta aleluya al Señor,
canta aleluya, canta aleluya, 
canta aleluya al Señor.
''');
    Song songGospelAcclamation3 = Song('Maneno yote ya injili', '''
Maneno yote ya injili mitume,
tangazeni pote duniani (x2)

Haya sasa fungueni masikio (x2)
maneno ya injili yaenezwe.

Yesu aliwaambia mitume,
tangazeni pote duniani (x2)
''');
    Song songGospelAcclamation4 = Song('Seek ye first', '''
Seek ye first, the kingdom of God,
and all his righteousness.
And all these things 
will be added unto you.
Alle – lu – Alle - luia (x2)
 
Ask and it shall be given unto you,
seek and you shall find,
knock and it shall be opened unto you,
alleluia, alleluia.
''');
    Song songGospelAcclamation5 = Song('Aleluya cantará', '''
Aleluya cantará,
quien perdió la esperanza,
y la tierra sonreirá,
aleluya.
''');
    Song songGospelAcclamation6 = Song('Aleluya (Kairoi)', '''
Aleluya, Aleluya.
Aleluya, Aleluya.

Junto a Ti, Jesús, rezaré,
tu palabra quiero vivir.
Tú me haces sencillo, Señor,
en tus manos me dejaré.

Cantaré el amor que hay en ti,
porque me amas y estas aquí,
pones paz en mi corazón,
con tu amor feliz yo seré.

Nunca dejaré de cantar,
que Tú eres la luz y el amor.
Tu camino quiero seguir,
no me dejes solo Señor.
''');
    Song songGospelAcclamation7 = Song('Busca primero', '''
Busca primero el Reino de Dios,
y toda su justicia,
y todo lo  demás se os dará, 
por añadidura.
 
Aleluya, Aleluya, Aleluya, Aleluya, Aleluya. 
''');
    Song songGospelAcclamation8 = Song('Celtic Alleluia', '''
Chorus
Alleluia, Alleluia.
Alleluia, Alleluia.

Verse 1
Father we praise you as Lord,
all of the earth gives you worship,
for your majesty fills the heavens, fills the earth.

Verse 2
Blessed apostles sing praise;
prophets and martyrs give glory;
"For your majesty praise the Spirit, praise the Son!"

Verse 3
You are the Christ everlasting
born for us all of a Virgin,
you have conquered death, opened heaven to all believers.

Verse 4
Help those you saved by your blood,
raise them to life with your martyrs.
Save your people, Lord, as their ruler raise them up.
''');
    Song songGospelAcclamation9 = Song('Aleluya', '''
Aleluya,  a,  a,  aleluya
Aleluya!
Aleluya,  a,  a,  aleluya-
''');

    Song songOurFather1 = Song('Padre nuestro', '''
Padre nuestro tú que estás,
en los que aman la verdad,
haz que el reino que por Ti se dio,
llegue pronto a nuestro corazón,
y el amor que tu hijo nos dejó,
ese amor, habite en nosotros.

En el pan de la unidad,
Cristo danos Tú la paz,
y olvídate de nuestro mal,
si olvidamos el de los demás.
No permitas, 
que caigamos en tentación,
Oh Señor!
Y ten piedad del mundo.
''');
    Song songOurFather2 = Song('Our Father hear our prayer', '''
Hear our prayer
We are your children and
We've gathered here today
We've gathered here to pray
Hear our cry, Lord we need your mercy
And we need your grace today
Hear us as we pray
Our father who art in heaven
Hallowed be thy name'
Our father hear us from heaven
Forgive our sins we pray
Hear our song
As it rises to heaven
May your glory fills the air
As the waters cover the sea
See our heart
And remove anything
That is standing in the way
Of coming to you today
Our father who art in heaven
Hallowed be thy name'
Our father hear us from heaven
Forgive our sins we pray
Though we are few
We're surrounded by many
Who have crossed that river before
And this the song we'll be singing for ever
Holy is the Lord
Holy is the Lord
Holy is the Lord
Holy is the Lord
Holy is the Lord
Holy is the Lord
Holy is the Lord
Holy is the Lord
Hear our prayer
We are your children and
We've gathered here today
We've gathered here to pray
Hear our cry, Lord we need your mercy
And we need your grace today
Hear us as we pray
Pur father who art in heaven
Hallowed be thy name'
Our father hear us from heaven
Forgive our sins we pray >
''');
    Song songOurFather3 = Song('Our Father - Echo', '''
Our Father - our father,
who art in heaven - who art in heaven,
hallowed be Thy name – hallowed be Thy name,
hallowed be Thy name - hallowed be Thy name.

Thy kingdom come - Thy kingdom come,
Thy will be done - Thy will be done,
upon the earth - upon the earth,
as it is in heaven - as it is in heaven.

Give us this day - give us this day,
our daily bread - our daily bread,
and for give us - and forgive us,
our tress passes - our tresspasses,
as we forgive - as we forgive,
forgive those - forgive those,
who tress pass - who tresspass,
against us - against us.

And lead us not - and lead us not,
into temptation - into temptation,
but deliver us - but deliver us,
from evil - from evil.

For the Kingdom - for the Kingdom,
the power and the glory - the power and the glory,
are Thine, now - are Thine now,
and forever Amen - and forever, Amen.
''');
    Song songOurFather4 = Song('Baba yetu', '''
Baba yetu, yetu uliye
Mbinguni yetu, yetu, amina
Baba yetu, yetu, uliye
Jina lako litukuzwe
Baba yetu, yetu uliye
Mbinguni yetu, yetu, amina
Baba yetu, yetu, uliye
Jina lako litukuzwe
Utupe leo chakula chetu
Tunachohitaji utusamehe
Makosa yetu, hey
Kama nasi tunavyowasamehe
Waliotukosea, usitutie
Katika majaribu, lakini
Utuokoe, na yule, milele na milele
Baba yetu, yetu uliye
Mbinguni yetu, yetu, amina
Baba yetu, yetu, uliye
Jina lako litukuzwe
Baba yetu, yetu uliye
Mbinguni yetu, yetu, amina
Baba yetu, yetu, uliye
Jina lako litukuzwe
Ufalme wako ufike utakalo
Lifanyike duniani kama mbinguni, amina
Baba yetu, yetu uliye
Mbinguni yetu, yetu, amina
Baba yetu, yetu, uliye
Jina lako litukuzwe
Baba yetu, yetu uliye
Mbinguni yetu, yetu, amina
Baba yetu, yetu, uliye
Jina lako litukuzwe
Utupe leo chakula chetu
Tunachohitaji utusamehe
Makosa yetu, hey
Kama nasi tunavyowasamehe
Waliotukosea, usitutie
Katika majaribu, lakini
Utuokoe na yule msiba milele
Baba yetu, yetu, uliye
Jina lako litukuzwe
Baba yetu, yetu, uliye
Jina lako litukuzwe
''');
    Song songOurFather5 = Song('Our Father', '''
Our Father, who art in heaven,
hallowed be thy name. 
Thy Kingdom come, 
thy will be done,
Hallowed be thy name (x2)
 
On earth as it is in heaven, hallowed be thy name.
Give us this day our daily bread, hallowed be thy name (x2)
 
And forgive us all our trespasses,
hallowed be thy name.
As we forgive those who trespass against us,
hallowed be thy name (x2)
 
And lead us not into temptation,
hallowed be thy name.
But deliver us from all that is evil; hallowed be thy name (x2).
 
For thine is the kingdom, 
the power and Glory,
hallowed be thy name,
forever and ever,
and ever and ever,
hallowed be thy name (x2).
''');
    Song songOurFather6 = Song('Bapa Kami - Our Father in Heaven (Malay)', '''
Bapa kami yang ada di syurga,
dikuduskanlah nama-Mu.
Datanglah kerajaan-Mu,
Jadilah kehendak-Mu,
di atas bumi seperti di dalam syurga.
Berikanlah kami rezeki pada hari ini,
dan ampunilah kesalahan kami seperti kami pun mengampuni
orang yang bersalah kepada kami.
dan janganlah masukkan kami ke dalam percubaan,
tetapi bebaskanlah kami dari yang jahat.
''');
    Song songOurFather7 = Song('Pater noster', '''
Pater noster, qui es in coelis:
sanctificatur nomen tuum;
adveniat regnum tuum;
fiar voluntas tua, sicut in coelo, 
et in terra.
Panem nostrum quotidianum da nobis hodie;
et dimitte nobis debita nostra,
sicut et nos dimittimus debitoribus nostris,
et ne nos inducas in tentationem,
sed libera nos a malo.
''');

    Song songCreed1 = Song('Credo campesino', '''
Creo Señor firmemente,
que de tu pródiga mente,
todo este mundo nació,
que de tu mano de artista,
de pintor positivista,
la belleza floreció.
Las estrellas y la luna,
las casitas, las lagunas,
los barquitos navegando,
sobre el río, junto al mar.
Los inmensos cafetales,
los blancos algodonales,
y los bosques mutilados,
por el hacha criminal.

Creo en Vos,
arquitecto ingeniero,
artesano carpintero,
albañil y armador.
Creo en Vos,
constructor del pensamiento,
de la música y del viento,
de la paz y del amor.

Yo creo en vos Cristo obrero,
luz de luz y verdadero,
unigénito de Dios,
que para salvar el mundo,
en el vientre humilde y puro,
de María se encarnó.
Creo que fuiste golpeado,
con escarnio torturado,
en la cruz martirizado,
siendo Pilato pretor,
el romano imperialista,
puñetero y desalmado,
que lavándose las manos,
quiso borrar el error.

Yo creo en Vos compañero,
Cristo humano, Cristo obrero,
de la muerte vencedor,
con el sacrificio inmenso,
engendraste el hombre nuevo,
para la liberación.
Vos estás resucitando,
en cada brazo que se alza,
para defender al pueblo,
del dominio explotador,
porque estás vivo en el rancho,
en la fábrica, en la escuela,
creo en tu lucha sin tregua,
creo en tu resurrección.
''');
    Song songCreed2 = Song('Do you believe?', '''
Chorus - Do you believe x3 Yes I believe

Mighty Father and the Son, the Holy Spirit
Yes I believe

1. Mighty Father I believe. Do you believe? Yes I believe
   You created heaven and earth. Do you believe? Yes I believe
   I believe in Jesus Christ. Do you believe? Yes I believe
   Everlasting son of God. Do you believe? Yes I believe
2. Equal to the Father's power Do you believe? Yes I believe
   And through him all things were made Do you believe? Yes I believe
   He it was who made us all Do you believe? Yes I believe
   And from ( heav'n came ) down to earth Do you believe? Yes I believe
3. Of the Virgin Mary born Do you believe? Yes I believe
   By the spirit word made flesh Do you believe? Yes I believe
   Suffered death was crucified Do you believe? Yes I believe
   And he rose up from the dead Do you believe? Yes I believe
4. He ascended into heaven Do you believe? Yes I believe
   And his kingdom has no end Do you believe? Yes I believe
   In the spirit I believe Do you believe? Yes I believe
   Lord and vivier of all Do you believe? Yes I believe.
5. With the father and the son Do you believe? Yes I believe
   He's adored and glorified Do you believe? Yes I believe
   In the one church I have faith Do you believe? Yes I believe
   And one baptism I profess Do you believe? Yes I believe.
6. In communion with the saints Do you believe? Yes I believe
   I confess that God is mercy Do you believe? Yes I believe
   After death I will rise again Do you believe? Yes I believe
   But first I must follow Christ Do you believe? Yes I believe.
7. I believe in God the Father Do you believe? Yes I believe
   In His son and in the spirit Do you believe? Yes I believe
   I believe that God is love Do you believe? Yes I believe
   And that we must live in love Do you believe? Yes I believe.
''');
    Song songCreed3 = Song('Sencillamente', '''
Creo sencillamente
Quiero disfrutar de la serenidad del creer,
desligar el creer del sentir,
creo, mi Dios ¡y basta!

Te creo en tus misterios
sin enten derlos.
Te creo en mí y en el Pan Blanco,
en el prójimo y en la creación
sin verte en ningun lado.

Creo, Señor, sencilla mente
porque creer es confiar.
¡Y cómo me gusta creerte
sintiendo dudas,
sintiendo dudas,
sintiendo dudas!

Digo que eres amor,
escucho que soy tu amado,
no siento y ¡qué más da!
¡Te quiero y eso basta!

[Chorus 2]
Amo, Señor, sencillamente
porque amar, es entregarse.
¡Cómo me gusta amarte
estando frío,
estando frío,
estando frío!

Espero en tu Palabra.
Vivo en tu Promesa.
Gozo en ti lo que aún me falta!

Espero, Señor, sencillamente
porque esperar es descansar
Y como me gusta, esperaré
sintiendo miedo,
sintiendo miedo,
sintiendo miedo!

Creo, amo, espero
¡Cómo me gusta seguirte
sintiendo dudas,
estando frío,
sintiendo miedo!
¡Cómo me gusta!
¡Cómo me gusta!
Quererte, amarte y esperarte.

[Final]
Te sigo sencillamente
''');

    Song songPresentationGifts1 = Song('Mungu Baba Pokea', '''
1. Mungu Baba pokea sadaka yetu leo
   Tukutoleayo kwa jina la Mwanao
   Ya Abeli na Ibrahimu ilikupendeza
   Yetu Baba ipendeze uipokee

   Ipokee - (ipokee) sadaka yetu
   Ndilo fumbo - (ndilo fumbo) la kukupendeza
   La Baba na Mwana na Roho Mtakatifu *2

2. Njooni wote tutoe sadaka yetu leo
   Kwa sifa na utukufu wake Mwenyezi
   Mkate huu na divai ndivyo mwili wake
   Kwa heshima kuu sadaka tumtolee

3. Ee Mwenyezi tupokee tuwe mali yako
   Twakusihi kwa heshima utupokee
   Tunakutolea nguvu kazi na mavuno
   Kwa huruma yako dhambi tuondolee

4. Kama mwanzo Mungu Baba a-si-fiwe
   Na mwanaye ndiye aliyetukomboa
   Roho Mtakatifu ndiye wetu mfariji
   Utatu Mtakatifu Mungu mmoja twakiri
''');
    Song songPresentationGifts2 = Song('Ngai Niariturathimaga', '''
Ngai nîarîtûrathimaga, rathime mawira maitu(mawîra maitû)
Arathime mîgûnda itû twamûtegera na wendo (Ngai witû) x2

1. Niegûtûhe kîrîa gîothe twamûhoya - twamûtegera na wendo
   Niegûtûhe bûthi wa irio na mahiû -
   Mawîra maitû namo mone umithio -

2. Mirimû itû yothe niegûtûhonia -
   Atwehererie mogwati mawîra-inî -
   Mabiacara maitû magîthereme -

3. Kîrîa twahanda agatûma tûgethe -
   Thuthi, mbûca, memenyi atwehererie -
   Ng'aragu gwitû igûtwika rûgano -
''');
    Song songPresentationGifts3 = Song('Ee Mfumu ee Yamba', '''
1. Ee Mfumue, yamba makabo *2
   Yamba makabo ya kimenga na beto *2

   Tala maboko na mono yo kele mpamba
   Tala mono kimbeni, nsukami ya nene
   Nki kima mono talenda pesa na ngeye *2
   Mfumu e, mfumu e, *4

2. Ee mfumu e, yamba mampa *2
   Yamba mampa ya kimenga na beto *2

3. Ee Mfumu e, yamba vino *2
   Yamba vino ya kimenga na beto *2

4. Ee Mfumu e, yamba cholare *2
   Yamba cholare ya kimenga na beto *2
''');
    Song songPresentationGifts4 =
        Song('“Take And Sanctify” - Sir Jude Nnam', '''
Take and sanctify for your honour Lord 
And sanctify these gifts for your honour Lord take eee 
And sanctify these gifts for your honour Lord.

1. All that I am all that I do 
Everything I will ever make
Take my life and take my all
Everything I will ever make.

2. All that I need all that I pray
Everything I will ever have
Take my life and take my all
Everything I will ever have.

3. All that I dream all that I crave
Everything I'll ever be
Take my life and take my all
Everything I will ever be
''');
    Song songPresentationGifts5 = Song('Nakuja na Zawadi', '''
Naondoka mimi naenda kwa Baba,
Nipeleke hiki nilichokipata,
Japo kidogo, sitaona haya,
Nimeamua, sitarudi nyuma

{ Nakuja polepole Baba,
Nakuja na zawadi yangu
Naleta mbele zako ili nitoe shukurani } *2

1. Natembea mimi mwendo wa madaha,
   Nakanyaga chini kwa maringo tele,
   Naelekea, altare ya Bwana,
   Nimkabidhi, nilichojaliwa.
2. Nimechangamka ninashangilia,
   Napiga kelele kelele za shangwe
   Nachezacheza, najongea kwako,
   Ee Mungu Baba Nipokee mimi.
3. Nafsi yangu mimi naileta kwako,
   Mkate divai pia ninaleta
   Uigeuze, mwili na damuyo,
   Chakula chetu, tunaosafiri
4. Mavuno shambani mimi nimevuna,
   Mifukoni fedha nimekabidhiwa,
   Mimi ni nani, nisikushukuru,
   Baba nasema asante kwa yote.
''');
    Song songPresentationGifts6 = Song('Matega Maitu', '''
Matega maitu Ngai twagutegera,
Twakuria umamukire na umarathime

Moe! Moee, moe ee,
Twakuria umamukire na umarathime *2

1. Mugate witu twagutegera...
2. Divai itu twagutegera...
3. Magetha Maitu twagutegera...
4. Na mbeca citu twagutegera...
5. Aciari aitu twagutegera...
6. Na ciana citu twagutegera...
7. Mathomo maitu twagutegera...
8. Muhiki na Muhikania twagutegera...
9. Arata aitu twagutegera...
''');
    Song songPresentationGifts7 = Song('Yamba yamba', '''
Yamba yamba yamba Yahweh ee Yahweh ee,
Yamba yamba yahweh ee.. 2

1. Yamba yamba yamba, mampa na beto yahweh ee
   Yamba yamba yahweh ee..2 yamba yamba yahweh ee.

2. Yamba yamba yamba, makabu na beto Yahweh ee
   Yamba yamba yahweh ee ..2 yamba yamba yahweh ee

3. Yamba yamba yamba, kisue na beto yahweh ee
   Yamba yamba yahweh ee ..2 yamba yamba yahweh ee
''');

    Song songEntrance1 = Song('Oh when the saints', '''
Oh when the saints, 
go marching in (x2)
I want to be, in that number,
oh when the saints, 
go marching in.

Oh when the Lord 
calls out the name... (x2)
Oh when the angels 
blow their horns... (x2)
Oh when the stars 
fall from the sky... (x2)
Oh when the sun 
shall become dark... (x2)
''');
    Song songEntrance2 = Song('Twende Sote Nyumbani Mwake', '''
{ Twende sote nyumbani mwake, Bwana Mungu ( aee )
Twende sote nyumbani mwake aliyetuumba } *2

1. Yeye ndiye kinga yetu - Bwana Mungu (aee)
   Twende sote nyumbani mwake aliyetuumba
   Yeye ndiye nguvu yetu -
2. Yeye Bwana wa majeshi -
   Ndiye Mungu wa Yakobo -
3. Yeye mfalme wa wafalme -
   Ndiye mfalme wa dunia -
4. Ndiye Mfalme wa Mbinguni -
   Yeye Mungu wa wokovu -
5. Yeye ndiye mwamba wetu-
   Ni hekima ya dunia -
6. Jina lake litukuzwe -
   Ndiye Mungu mtakatifu -
7. Pendo lake la milele -
   Ndiye Mungu mwema kweli -
''');
    Song songEntrance3 = Song('Alma misionera', '''
Señor, toma mi vida nueva,
antes de que la espera, 
desgaste años en mi.
Estoy, 
dispuesto a lo que quieras,
no importa lo que sea,
tú llámame a servir.

Llévame donde los hombres,
necesiten tus palabras,
necesiten mis ganas de vivir,
donde falte la esperanza,
donde falte la alegría,
simplemente,
por no saber de Ti!

Te doy, 
mi corazón sincero,
para gritar sin miedo,
lo hermoso que es tu amor.
Señor, tengo alma misionera,
condúceme a la tierra, 
que tenga sed de Ti.
Así, en marcha iré cantando, 
por pueblos predicando, 
Tus grandezas, Señor. 

Tendré, mis manos sin cansancio,
tu historia entre mis labios, 
la fuerza en la oración.
''');
    Song songEntrance4 = Song('Adrgehilnyal', '''
Adrgehil nyal na
lezelealem amesegnhalehu.

Bante yetenesa behonaleny neger,
kemamsigen beker ine min lenager,
Asbeh akde leseteshign bemulu,
Geta sem yikeber amesegnhalehu
Kene yehon yelem andim alefehuñim 
Indiyawu setteshinyal yihen alrasahuñim  
Selezih getaye leine silalebku
Adrgahlñal keeimroye belay
Getaye tebarak bemdirm besemay (x3)

Admeyen bamulu blefena btir
Yemasagenyewun semayawi mister 
Selbe tegograh lbenm berakewu
Kezih hulu belay yerasih arekewu
Inem tesemamtche befikir temarku
Getaye amlake mertcheye adrek
Ante kemertekeñ wedet iyedalehu 
Kaante yebelete mnse igenyalehu
Getaye amlake yehiwote lakbrh 
Yihe new miñote zemenen liset
Yihe new meshate idmeyen leseth

Nefesenm berakat sigayenm fewesekewu
Barkothn hulu babete ifeslekewu
Wede ante metche minm algdeleñm
Nebsna sigayen bamulu barkilñ 
Alehuñ babete genam igoralehu
Neguse kehonkeñ beten yemitgeza
Yihe new meshate yeleñim kezih lela
Yihenin larikwu belbh lasebkwu
Leante leamlak hulu igehalehuñ
Leante leamlak hulu igehalehuñ (2)
''');
    Song songEntrance5 = Song('Bwana Mungu', '''
1. Bwana Mungu nashangaa kabisa,
   Nikifikiri jinsi ulivyo,
   Nyota, ngurumo, vitu vyote pia,
   Viumbavyo kwa uwezo wako.
   Roho yangu na ikuimbie,
   Jinsi wewe ulivyo mkuu,
   Roho yangu na ikuimbie,
   Jinsi wewe ulivyo mkuu.
2. Nikitembea pote duniani,
   Ndege huimba nawasikia,
   Milima hupendeza macho sana,
   Upepo nao nafurahia.
3. Nikikumbuka vile wewe Mungu,
   Ulivyompeleka mwanao,
   Afe azichukue dhambi zetu,
   Kuyatambua ni vigumu mno.
4. Yesu Mwokozi atakaporudi,
   Kunichukua kwenda mbinguni,
   Nitaimba sifa zako milele,
   Wote wajue jinsi ulivyo.
''');
    Song songEntrance6 = Song('Juntos como hermanos', '''
Juntos como hermanos,
miembros de una iglesia,
vamos caminando,
al encuentro del Señor.

Un largo caminar
por el desierto, bajo el sol,
no podemos avanzar,
sin la ayuda del Señor.

Unidos al rezar,
unidos en una canción,
viviremos nuestra fe,
con la ayuda del Señor.

La Iglesia en marcha está,
a un mundo nuevo vamos ya,
donde reinará el amor,
donde reinará la paz.
''');
    Song songEntrance7 = Song('Simama mbele', '''
Simama simama mbele, utaje utaje wote kwa bwana yesu
Simama we simama mbele, uu vuta utapokea uzima.*2
Nitapokea taji kwa bwana, nitapokea nikita zama,ee bbwana yesu unikumbuke, siku hiyo  uzima
 
Nikikumbuka mokoza yangu,nita mwenda musalabani eebwana yesu unikumbuke, siku hiyo ya uzima.
''');
    Song songEntrance8 = Song('As you enter in to the church', '''
As you enter in to the church your heart must be filled with joy, all your sins deep into your heart ,confess to the almighty.*2

BASS: (Be obedient) obedient

(Surrender your life) your life, (soul), your soul (thought), your thought Surrender all to God.*2

Jesus need us all to repent on offending others , as we go into the kingdom who will trespass against us .*2
 
Oh Lord God most high, love all his own children , if we keep all hiss command he will welcomes us all.*
''');
    Song songEntrance9 = Song('Make me a channel of your peace', '''
Make me a channel of your peace.
Where there is hatred, 
let me bring your love.
Where there is injury, 
your pardon, Lord.
And where there's doubt, 
true faith in you.
 
Make me a channel of your peace.
Where there's despair in life
let me bring hope.
Where there is darkness only light,
and where there's sadness ever joy.
 
Oh, Master grant that I may never seek,
so much to be consoled as to console,
to be understood as to understand,
to be loved, as to love with all my soul.
 
Make me a channel of your peace,
it is in pardoning that we are pardoned,
in giving to all men that we receive, 
and in dying that we're born to eternal life.
''');
    Song songEntrance10 = Song('Nalifurahi waliponiambia', '''
Nalifurahi sana, waliponiambia, na twende nyumbani, 
nyumbani mwake Bwana. (x2)

Miguu yetu imesimama, katika,
malango ya Yerusalem, Ohoo.

Yerusalemu, miji uliojengwa,
kama ule  mji ulioshikama, Ohoo.

Mtakieni yerusalemu amani,
na mfanikiwe wakupendao, ohoo.

Kwa ajili ya jina la Mungu wetu,
ninakuombea upate fanaka, ohoo.
''');
    Song songEntrance11 = Song('Ven conmigo, amigo', '''
Si buscas sentido a tu vida,
para vivir de verdad,
levanta más la mirada,
porque limpio el cielo está,
es libre sin slogans,
que no te dejan pensar.

Ven conmigo, amigo,
tú puedes mucho más,
ven conmigo, amigo,
el mundo nuestro será.

Haremos fuego en la noche,
con nuestro canto arderá,
el viento será la noticia,
con palabras de amistad,
la luz despeja sombras,
e ilumina nuestro andar.

Se dicen tantas palabras,
que esconden la gran verdad,
vivamos en la esperanza,
que la fe hará brillar,
ahora es el momento,
lo que vale en ti es amar.

Oirás una voz que no duda,
cuando habla de libertad,
es Él quien mueve la historia,
él que cuenta de verdad,
Jesús que en ti camina,
a su paso vuelve la paz.
''');
    Song songEntrance12 = Song('Come una cerva va alla fonte', '''
Mi sento povero, perché ho sete di gioia.
Dio, ho sete di te.

Come una cerva va alla fonte,
cosi io cerco te, o mio Signore.

Ha sete di te l'anima mia,
Come terra riarsa e senza vita.

Io cerco il Dio vivente:
Quando verro e vedrò il volto di Dio?

Il mio pane e pianto amaro,
quando dicono a me: Dov'e il tuo Dio?

Ti rattristi, anima mia?
l'amore di Dio é più della vita.

Come un'ulivo verdeggiante
Io spero in te, o mio Signore.
''');
    Song songEntrance13 = Song('Camminiamo sulla strada', '''
Camminiamo sulla strada,
che lan percorso i Santi Tuoi,
tutti ci ritroveremo,
dove eterno splende il soi.

E quando in ciel dei Santi Tuoi,
La grande schiera arriverà;
O Signor come vorrei
Che ci fosse un posto per me.
E quando il sol si spegnerà 
E quando il sole si spegnerà;
O Signor come vorrei
Che ci fosse un posto per me.

Cé chi dice che la vita,
sia tristezza e sia dolor,
ma io so che verrà un giorno,
In cui tutto cambierà.

E quando in ciel risuonerà,
La tromba che ci chiamerà,
o Signor come vorrei,
che ci fosse un posto per me.
Ll giorno che la terra e il ciel,
a nuova vita risorgerai;
O Signor, come vorrei
Che ci fosse un posto per me.
''');
    Song songEntrance14 = Song('Saudara siapkanlah', '''
Wahai, saudara siapkanlah diri,

Mari menghadap tuhan allahmu.

Mari, saudara satukanlah hati di dalam kurban

Kristus tuhanmu. (2x)

1. Kitan pendosa yang di undang pesta
   Memuliakan allah, bapa kita.
2. Marilah menghadap tuhan allahmu
   Di dalam kurban kristus, tuhanmu..
''');
    Song songEntrance15 = Song('Sólo Tú', '''
Sólo Tú eres mi plenitud,
eres mi apoyo mi fuerza y mi luz.
Eres mi vida y mi juventud,
eres mi gozo y mi cruz.

SÓLO TÚ ERES TODO MI BIEN,
SÓLO TÚ, SÓLO TÚ.
SÓLO TÚ ERES MI PLENITUD,
SÓLO TÚ, SOLO TÚ.

Samaritana siempre con sed
cuando en la tarde abrasaba el calor,
pero me diste un día beber
el manantial de tu amor.
ESTRIBILLO.

Siento a mi lado tu palpitar
por el camino que va hacia Emaús.
Das un sentido a mi caminar
mi Salvador eres Tú.
ESTRIBILLO.
''');
    Song songEntrance16 = Song('As the deer', '''
As the deer pants for the water, 
so my soul longs after You. 
You alone are my heart's desire and I want to worship You. 
 
You alone are strength my Shield, 
to you alone you'r may my spirit Yield, 
you alone are my heart's desire and I long to worship You.
 
I want you more than gold,
or silver only you can satisfy. 
You Alone are the real joy-giver 
and the apple of my eye.
 
You're my friend, 
and you are my brother, 
even though you are a king.
I love you more than any other, 
so much more than anything.
''');
    Song songEntrance17 = Song('Standing by the promise of God', '''
Standing on the promise 
of Christ my king,
through eternal ages 
let his praises ring,
glory in the highest,
I will shout and sing,
standing on the promises of God.

Standing, standing, standing on, 
the promises of God my savior, standing, standing I'm standing, 
on the promises of God.

Standing on the promises 
that cannot fail,
when the howling storm of doubt and fear assail,
by the living word of God I shall prevail, 
standing on the promises of God.

Standing on the promises of Christ the Lord,
Bound to Him eternally by love's strong cord,
overcoming daily with the spirit's sword,
standing on the promises of God.
''');
    Song songEntrance18 = Song('Nthungululu', '''
Nthungululu ndi manja kuyamika kwachifundo Alleluia
Kwa inu akulu oyera, Kwa inu akulu oyera Alleluia
Alleluia Alleluia Alleluia Alleluia
Ife pano tasonkhana kuimbira dzina lanu loyera Alleluia
Akulu ndi ana omwe aluluta ndi mavume Alleluia
Chifukwa ndi oyera, chifukwa ndi oyera Alleluia

Aimbira ndi anzeze ambira moyamika Alleluia
Kwa utatu wanu woyera, Kwa utatu wanu woyera Alleluia
''');
    Song songEntrance19 = Song('Hodi hodi', '''
Hodi hodi nyumbani mwake bwana; 
ninabisha ni fungulie,
nimekuja nyumbani mwako leo; nimekuja kukuabudu,
kwa unyenyekevu naijongea; 
meza yako yenye Baraka.
Nakuja na sala zangu ee Bwana, nakuomba nisilikize,
ninakutolea sadaka yangu, 
Mungu Baba ulipokee.

Nyua za Bwana zapendeza, zinapendeza macho kama nini,
natamani kuingia hekaluni, nikamwabudu  (x2)

Nimeingia hekaluni, 
nimeingia hekaluni mwako,
nimekuja kuabudu kusujudu, nyumbani mwako (x2)

Unipokee Mungu baba, 
unitakase mimi mwenye dhambi,
nimekuja mbele zako Mungu Baba, unipokee (x2)
''');
    Song songEntrance20 =
        Song('Ka jo maker (This is the day in Luo language)', '''
Ka jomaler,
donje eipolo,
kajomaler donje epolo,
Ruodhwa agombo bedo achiel kuomgi
kajomaler donje eipolo.

Kagipamo ne Yesu Ruoth,
kagipamo ne Yesu Ruoth,
Ruodhwa agombo bedo achiel kuomgi,
kagipamo ne Yesu Ruoth.

Kagiwero halleluyah,
kagiwero halleluyah,
Ruothwa agombo bedo achiel kuomgi
kagiwero halleluyah.
''');
    Song songEntrance21 = Song('Uninyunyizie Maji', '''
Uninyunyizie maji (Bwana) *2
Unioshe nitakate (kweli) Niwe mweupe kabisa *2
Mimi ni mwenye dhambi (Bwana) *2
Unioshe nitakate (kweli) Niwe mweupe kabisa *2
Natamani nije kwako (Bwana) *2
Unioshe nitakate (kweli) Niwe mweupe kabisa *2
Naingia nyumba yako (Bwana) *2
Unioshe nitakate (kweli) Niwe mweupe kabisa *2
Niuone uso wako (Bwana) *2
Unioshe nitakate (kweli) Niwe mweupe kabisa *2
Nifurahi milele (Bwana) *2
Unioshe nitakate (kweli) Niwe mweupe kabisa *2
''');
    Song songEntrance22 = Song('Vienen con alegría', '''
Vienen con alegría Señor,
cantando vienen con alegría, Señor, 
los que caminan por la vida Señor, sembrando tu paz y amor.

Vienen trayendo la esperanza,
a un mundo cargado de ansiedad,
a un mundo que busca 
y que no alcanza caminos de amor y de amistad.

Vienen trayendo entre sus manos,
esfuerzos de hermanos por la paz,
deseos de un mundo más humano,
que nacen del bien y la verdad.
''');
    Song songEntrance23 = Song('Astro del ciel', '''
Astro del ciel pargolo Divino,
Mite Agnello Redentor!
Tu che i vati da lungi sognar,
Tu che angeliche voci annunziar.

Luce dona alle menti,
ace infondi nei cuori!  (x2)

Astro del ciel pargolo Divino,
mite Agnello Redentore,
Tu di stripe regale decora,
Tu virgineo mistico fior.

Astro del ciel pargolo Divino,
mite Agnello Redentore,
Tu disceso a scontare l'errore,
Tu sol nato a parlare d'amor.
''');
    Song songEntrance24 = Song('I need no other argument', '''
I need no other argument,
I need no other plea,
it is enough that Jesus died,
and that he died for me.

My faith has found, a resting place,
not in divine, or creed,
I trust the ever living one.
His wound for me shall plead.

My heart is learning on the word,
the written word of God,
salvation by my saviours name,
salvation through His blood.

My great physician heals the sick,
the lost he come to save,
for me the precious blood he shed,
for me his life he gave.

Enough for me, that Jesus died,
and that he died for me,
my fear and doubt a sinful soul,
I come to Him; 
He'll never cast me out.
''');
    Song songEntrance25 = Song('God has chosen me', '''
God has chosen me (x2)
to bring good news to the poor.
God has chosen me (x2)
to bring new sight,
to those searching for light,
God has chosen me, 
God has chosen me.
 
And to tell the world that God's 
kingdom is near,
to remove oppression and to break down fear,
yes God's time is near,
God's time is near (x3)
God has chosen me (x2)
to set a light a new fire.
God has chosen me (x2)
to bring to birth,
a new kingdom on earth,
God has chosen me,
has chosen me.
 
God is calling me (x2)
in all whose cry is unheard,
God is calling me (x2)
to raise up the voice,
with no power or choice,
God is calling, is calling me.
''');
    Song songEntrance26 = Song('God is watching us', '''
From a distance the world looks blue and green,
and snow-capped mountains white.
From a distance the ocean meets the stream,
and the eagle takes to flight.

From a distance, there is harmony,
and its echoes through the land.
It's the voice of hope, 
it's the voice of peace,
it's the voice of every man.

From a distance,
we all have enough,
and no one is in need,
and there are no guns,
no bombs, no disease,
no hungry mouths to feed.

From a distance, 
we are instruments,
marching in a common band,
playing songs of hope,
playing songs of peace,
they're the songs of every man.

God is watching us,
God is watching us,
God is watching us, 
from a distance.

From a distance you look like my friend,
even though we are at war,
from a distance,
I just cannot comprehend,
what all this fighting is for.

From a distance there is harmony,
and it echoes through the land,
and it's the hope of hope,
it's the love of love,
it's the heart of every man (x2)

And God is watching us, 
God is watching us.
God is watching us from a distance (x2)
''');
    Song songEntrance27 = Song('Be not afraid', '''
You shall cross the barren desert,
but you shall not die of thirst,
you shall wonder far in safety,
though you do not know the way. 
You shall speak your words to foreign men,
and they will understand,
you shall see the face of God and live.
 
Be not afraid,
I go before you always.
Come follow me,
and I will give you rest.
 
If you pass through raging waters,
in the sea you shall not drown.
If you walk amid the burning flames, 
you shall not be harmed,
if you stand before the power of hell,
and death is at your side,
know that I am with you through it all.
 
Blessed are the poor,
for the kingdom shall be theirs, 
blest are you, who weep and mourn, 
for one day you shall laugh,
and if wicked men insult and hate you all because of me,
blessed, blessed are you.
''');
    Song songEntrance28 = Song('Simameni watu wote (St. Joseph Migori)', '''
Simameni watu wote leo katika nyumba ya bwana (wote),furahini mbele zake bwana imbeni
nyimbo za shangwe(shangilieni)vigelegele, pigeni makofi hekaluni mwake mwimbieni
bwana wimbo mpya (watu wote)

1. Akina mama wote-oyee; Akina baba wote-oyee
   Njooni nyote mbele za bwana, mkiimba nyimbo za shangwe
   Njooni nyote mbele za bwana njooni leo m'barikiwe
2. Enyi Vijana wote-oyee; Enyi wazee wote-oyee
   Njooni nyote mbele za bwana, mkiimba nyimbo za shangwe
   Njooni nyote mbele za bwana njoo ni leo m'barikiwe
3. Ni siku ya furaha-leo; Ni siku yenye heri-leo
   Tumshukuru muumba wetu, tusifu mwenyezi mungu
''');
    Song songEntrance29 = Song('Eriama riama ngoni daangea', '''
Eriama riama ngoni daangea, 
nawi apolon ka apayoko,
eriama riama ngoni daangea.

Ngikanupak potu daangea...
Ngikasukou potu daangea...
Ngide cicik potu daangea...
Ngakimati potu daangea...
Ngikiristoi potu daangea...
''');
    Song songEntrance30 = Song('Abba', '''
Abba, Abba, Father.
You are the potter,
and we are clay,
the work of your hands.
 
Mould us, 
mould us and fashion us, 
into the image,
of Jesus, your Son,
of Jesus, your Son.

Father, may be one in You,
as He is in you,
and You are in Him,
and You are in Him.
 
Glory, glory and praise to You,
glory and praise to You,
forever, amen,
forever, amen.
''');
    Song songEntrance31 = Song('Iglesia peregrina', '''
Todos unidos formando un solo cuerpo,
un cuerpo que en la Pascua nació;
miembros de Cristo en sangre redimidos,
iglesia peregrina de Dios.
Vive en nosotros la fuerza del Espíritu que el Hijo 
desde el Padre envió,
él nos conduce, nos guía 
y alimenta,
iglesia peregrina de Dios.
 
Somos en la tierra semilla de otro reino,
somos testimonio de amor.
Paz para las guerras y luz entre las sombras,
iglesia peregrina de Dios.
 
Rugen tormentas 
y a veces nuestra barca
parece que ha perdido el timón.
miras con miedo, 
no tienes confianza,
iglesia peregrina de Dios.
Una esperanza nos llena de alegría;
presencia que el Señor prometió.
Vamos cantando, El viene con nosotros,
iglesia peregrina de Dios.
 
Todos nacidos en un solo bautismo,
unidos en la misma comunión.
Todos viviendo en una misma casa,
Iglesia peregrina de Dios.
Todos prendidos en una misma suerte,
ligados a la misma salvación
somos un cuerpo y Cristo es la cabeza, 
iglesia peregrina de Dios.
''');
    Song songEntrance32 = Song('Christ be beside me', '''
Christ be beside me, 
Christ be before me, 
Christ be behind me, 
King of my heart.
Christ be within me, 
Christ be below me, 
Christ be above me, 
never to part.

Christ on my right hand, 
Christ on my left hand, 
Christ all around me, 
shield in the strife.
Christ in my sleeping, 
Christ in my sitting 
Christ in my rising, 
light of my life.

Christ be in all hearts, 
thinking about me.
Christ be in all tongues, 
telling of me.
Christ be the vision, 
in eyes that see me, 
in ears that hear me, 
Christ ever be.
''');
    Song songEntrance33 = Song('Twimbe Kwa Shangwe', '''
Twimbe kwa shangwe na furaha *2

Bwana ametufanyia makuu

1. Tuingie kwake Mungu wetu,
   Tuingie kwake kwa shukrani,
   Bwana ametufanyia makuu
2. Yeye ndiye Mungu wa miungu,
   Yeye ndiye Bwana wa mabwana,
   Bwana ametufanyia makuu
3. Bwana ni mfalme wa wafalme,
   Yeye ndiye Baba wa viumbe,
   Bwana ametufanyia makuu
4. Ametenda mambo ya ajabu,
   Aliye gizani hatajua,
   Bwana ametufanyia makuu
5. Tuingie kwake Muumba wetu
   Tuingie kwake kwa shukrani
   Bwana ametufanyia makuu
6. Sifa na heshima kwake Mungu
   Mwenye utukufu wa ajabu
   Bwana ametufanyia makuu
''');
    Song songEntrance34 = Song('Éste es el día en que actuó el Señor', '''
Éste es el día,
en que actuó el Señor,
sea nuestra alegría,
y nuestro gozo.
Dad gracias al Señor,
porque es bueno,
porque es eterna su misericordia.

¡Aleluya, Aleluya!
Que lo diga la casa de Israel:
Es eterna su misericordia,
Que lo diga la casa de Aarón:
Es eterna su misericordia,
Que lo digan los fieles del Señor:
Es eterna su misericordia.

Escuchad: Hay cantos de victoria,
en las tiendas de los justos:
“La diestra del Señor es poderosa,
Es excelsa la diestra del Señor”.
“La diestra del Señor es poderosa,
Es excelsa la diestra del Señor”.

Abridme las puertas del triunfo,
y entraré para dar gracias al Señor.
Esta es la puerta del Señor,
los vencedores entrarán por ella.
Yo no he de morir, yo viviré,
para contar las hazañas del Señor.

La piedra que el cantero desechó,
es ahora la piedra angular,
es el Señor quien lo ha hecho,
esto ha sido un milagro patente,
te doy gracias porque me,
escuchaste,
porque fuiste mi salvación.
''');
    Song songEntrance35 = Song('Save the people (Godspell)', '''
When wilt thou save the people?
Oh God of mercy when?
The people, Lord, the people,
not thrones and crowns,
But men

Flowers of thy heart,
O God are they,
let them not pass like weeds away,
their heritage, a sunless day,
God save the people,

Shall crime bring crime forever
Strength aiding still as strong?
Is it thy will, O Father
That men shall toil for wrong?

Oh, no, say thy mountains
No, say thy skies
Man's clouded sun shall brightly rise
and songs be heard, instead of sighs
God save the people!

When wilt thou save the people?
Oh God of mercy when?
The people, Lord! The people!
Not thrones and crowns,
but men!

God save the people,
for thine they are,
thy children as thy angels fair,
God save the people,
from despair,
God save the people!
Oh God save the people!
God save the people!
Oh God save the people!
God save the people!
Oh God save the people!
God save the people!
Oh God save the people!

When wilt thou save the people!?
Oh God of mercy when!?
The people, Lord! The people!!
Not thrones and crowns,
but men!

God save the people! (God save us!)
For thine they are. (for thine they are)
Thy children as thy angels fair.
Oh God save the people!
God save the people!
''');
    Song songEntrance36 = Song('Dios está aquí', '''
Dios está aquí, 
tan cierto como el aire que respiro,
tan cierto como la mañana se levanta,
tan cierto como yo te hablo y me puedes oír.

Dios está en ti...

Dios está en mí...
''');
    Song songEntrance37 = Song('Kila Mwenye Pumzi', '''
Aleluya, aleluya, aleluya, aleluya *2

Kila mwenye pumzi, na amsifu Bwana *2

1. Msifuni Mungu katika patakatifu pake,
   Msifuni katika anga la uweza wake *2
2. Msifuni Mungu kwa matendo yake makuu
   Msifuni kadiri ya wingi wa ukuu wake *2
3. Msifuni Mungu kwa mvumo wa baragumu
   Msifuni sifuni kwa kinanda na kinubi *2
4. Msifuni Mungu kwa matari na kucheza
   Msifuni sifuni kwa zeze na filimbi *2
5. Msifuni Mungu kwa matoazi yaliayo
   Msifuni sifuni kwa matoazi yavumayo *2
''');
    Song songEntrance38 = Song('Foti neon ba maromak', '''
Foti neon ba maromak hananu ba maromak
Tan maromak naran boot liu hotu hotu 
SOLO
1. Maromak hahi ita hamutuk hodi haksolok ita tinan ba tinan (REEF)
2. Kristu mak dalan loos ho maksoin ita hodi neon harohan ba maromak (REEF)
''');
    Song songEntrance39 = Song('Eriamariama Ekapolonia', '''
ESIRIAMA EKAPOLONIA MAATA PAYA
ACHUNAKIN NGIKANUPAK LOKELESIA
ESIRIAMA EKAPOLONIA AKUJ YOKO

1. AKUJ NATI ABRAHAM KINYARIT KOLONG APAYOKO
   AKUJ NATI ASAKA KINYARIT KOLONG APAYOKO
   AKUJ NATI ASAKA KINYARIT KOLONG APOYORIO
''');
    Song songEntrance40 = Song('This is the day', '''
This is the day, this is the day,
that the Lord has made,
that the Lord has made.
Let us rejoice, let us rejoice,
and be glad in it and be glad in it.

This is the day that the Lord 
has made, 
let us rejoice and be glad in it.
This is the day, this is the day, 
that the Lord has made.

These are the parents.

This is the church.
''');
    Song songEntrance41 = Song('Eriama potu elipa', '''
Eriama potu elipa, ai iriemio,
Eriama lokelesia, anayara ta
Akuj Apa yoko.

Esakete ngide Akuj Alozaro...
Esakete ngide Akuj Isaya...
Esakete ngide Akuj Abraham...
''');
    Song songEntrance42 = Song('Tuingie', '''
Tuingie, tuingie kwa Yahweh Bwana, furaha gani siku ya leo (x2)

Eee wa mama wote, 
furaha gani siku ya leo.

Eee wa baba wote, 
furaha gani siku ya leo.

Eee vijana wote, 
furaha gani siku ya leo.

Eee watoto wote, 
furaha gani siku ya leo.
''');
    Song songEntrance43 = Song('Enter, rejoice, and come in', '''
Enter, rejoice, and come in. 
Enter, rejoice, and come in.
Today will be a joyful day; 
enter, rejoice, and come in.

Sing alleluia,
Sing alleluia
Today will be a joyful day,
Sing alleluia.

Lift up your voice to the Lord x2
Today will be a joyful day
Lift up your voice to the Lord

Open your hearts to the Lord 
Open your hearts to the Lord
Today will be a joyful day;
Open your hearts to the Lord.

Open your hearts to all men
Open your hearts to all men
Today will be a joyful day,
open your hearts to all men.
''');
    Song songEntrance44 = Song('Tolomutu nanok ka akuj', '''
Tolomutu nanok ka akuj na kiriket keng
Koneni epurosi ngesi ekasuban angiboro
Kandaang x2 (iyeyeye kirediki alenguren
Keng kimaimai akuj apa epurosi ngesi
Ekasaban angiboro kaadaang x2)
 
1. Tolomutu ngipasain tolomutu epuro apayok
   Epurosi ngesi ekasuban angibiro kaadaang.
 
2. Tolomutu ngikasukou tolomutu epuno apayok
   Epurosi ngesi ekasuban angiboro kaadaang.
 
3. Tolomutu ngakimatii tolomutu epuro apayok
   Epurosi ngesi ekasaban angiboro kaadaang.
 
4. Tolomutu ngidea pesaru tolomutu epuro apayok
   Epurosi ngesi ekasuban angiboro kaadaang.
 
5. Tolomutu ngideu supau tolomutu epuro apayok
   Epurosi ngesi ekasuban angiboro kaadaang.
''');
    Song songEntrance45 = Song('NJOONI TUINGIE KWAKE', '''
TENOR: NJOONI TUINGIE KWAKE
ALL: BWANA MUNGU WETU
SOP: TUCHEZE NA KUFURAHI
ALL: SISI BWANA WAKEX2

NJOONI TUCHEZE, NJOONI TUFURAHI, NJOONI TUMUIMBIE NA KUMTUKUSA BWANA
SOP: WATU WOTE LEO NJOONI TUMSIFU BWANA x2
ALL: KWA NINANDA BARAGUMU NA KUMTUKUZA BWANA x2

TENOR: VINANDA NA TUCHEZE
ALL: KAYAMBA TAMBURI
SOP: ZEZE PIA NA NGOMA
ALL: TUCHEZE VYOTE

TENOR: KINA BABA KINA MAMA
ALL SHUKRANI BWANA
SOP: YEYE AWEZAYE YOTE
ALL: KILA UCHAO x2

TENOR: MAKASISI NA WATAWA
ALL: NJOONI TUMUIMBIE
SOP: MABRODA NA WALEI
ALL: CHEZENI KAYAMBA x2
''');
    Song songEntrance46 = Song('Twende Nyumbani mwa Bwan', '''
Twende Nyumbani mwa Bwana  -  hoya twende nyumbani mwa Bwna hoya *2

Tuimbe tushangilie tupige vigelegele tupige makofi hoya hoya * 2

1. Twende tumsifu kwa nyimbo za Zaburi wakistu  hoya - Tumsujudie twende tukamwabudu wakistu hoya
2. Twende tumsifu kwa ngoma na kayamba wakristu, hoya - Tumsujudie twende tukamwabudu wakstru, hoya
3. Twende tukacheze vinanda na vinubi wakristu, hoya - Tumsujudie twende tukamwabudu wakristu, hoya
4. Tujitayarishe kwa nyimbo zake Bwana wakristu, hoya - Tumsujudie twende tukamwabudu wakristu, hoya
''');
    Song songEntrance47 = Song('O Lord my God!', '''
O Lord my God! When I in awesome wonder
consider all the works thy hand hath made,
I see the stars, I hear the mighty thunder,
thy power throughout the universe displayed;

Then sings my soul, my Saviour God, to thee,
how great thou art, how great thou art!
Then sings my soul, my Saviour God, to thee,
how great thou art, how great thou art!

When through the woods and forest glades I wander
and hear the birds sing sweetly in the trees;
when I look down from lofty mountain grandeur
and hear the brook and feel the gentle breeze:
Then sings my soul...

And when I think that God, his Son not sparing,
sent him to die - I scarce can take it in
that on the cross, my burden gladly bearing,
he bled and died to take away my sin:
Then sings my soul...

When Christ shall come with shouts of acclamation
and take me home - what joy shall fill my heart!
Then shall I bow in humble adoration
and there proclaim, 'my God, how great thou art!'
Then sings my soul...
''');
    Song songEntrance48 = Song('Nyanyukeni Waumini', '''
{ Nyanyukeni waumini wote tufanye shangwe
Kwa nderemo, kwa vigelegele na kwa vifijo } *2

Bwana asifiwe (sana) Bwana asifiwe (kweli)

Bwana asifiwe Mwathani aragoshuo

1. Nikiziangalia mbingu ni kazi ya vidole vyake
   Mwezi na nyota za mbinguni ulizoratibisha wewe
2. Uwezo wake Bwana Mungu haupimiki kwa mizani
   Mipango yake kwetu sisi haiwezi kubadilishwa
3. Alikausha baharí ya Shamu ikawa nchi kavu
   Waisraeli wakapita kwa uwezo wa Mungu Baba
4. Na tupigeni tarumbeta vinubi hata na matari
   Tuimbe wimbo wake Musa na ule wa Mwanakondoo
5. Pazeni sauti zenu kwa shangwe hata na vifijo
   Sifa pia na utukufu tumpe Bwana siku zote
''');
    Song songEntrance49 = Song('City of God', '''
Awake from your slumber!
arise from your sleep!
a new day is dawning,
for all those who weep.

The people in darkness,
have seen a great light,
the Lord of our longing,
has conquered the night.
 
Let us build the city of God.
May our tears be turned into dancing!
for the Lord our light and our love,
has turned the night into day!
 
We are sons of the morning,
we are daughters of day,
the One who has loved us,
has brightened our way.

The Lord of all kindness,
has called us to be,
a light for his people,
to set their hearts free.
''');

    Song songVocationHymns1 = Song('Follow me', '''
Follow me, follow me, leave your home and family,
Leave your fishing nets and boats upon the shore.
Leave the seed that you have sown, leave the crops that you have grown, 
Leave the poeple you have known and follow me.

1. The foxes have their holes,
and the swallows have their nests,
but the son of man
has no place to lay down.
I do not offer comfort,
I do not offer wealth,
but in me will all happiness be found.

2. If you would follow me,
you must leave old ways behind.
You must take my cross
and follow on my path.
You may be far from loved ones,
you may be far from home,
but my father will welcome you at last.

3. Although I go away
you will never be alone.
for the spirit will be
there to comfort you.
Though all of you may scatter,
each follow his own path,
still the spirit of love will lead you home.
''');
    Song songVocationHymns2 = Song('Sauti nzuri', '''
Nasikia sauti nzuri, kama ya malaika,
Ni sauti toka mbinguni, sauti ya Mungu,
Aniita mimi niende nikamtumikie,
Anitume shambani mwake, nikavune yote.

{ Umeniita, nimeitika wito, nakuja kwako leo,
Najongea mbele zako, Bwana nipokee mimi,
Niko tayari nimeyaacha yote najikabidhi kwako
Unitume popote nami nitakwenda haraka } *2

Ninaenda mimi naenda, ninaenda mwenyewe
Ninaenda mbele za Bwana, sitarudi nyuma
Ndugu zangu na marafiki mniache niende,
Nikafanye kazi ya Bwana, nitakapotumwa.

Nilitazama moyo wako, moyo wako mwanangu
Hata kabla hujazaliwa nilikutambua,
Nilikuteua mapema, kati ya ndugu zako,
Uwe kuhani wangu mimi, kuhani mkuu.

Shamba lake Bwana ni kubwa, na mavuno ni mengi,
Wavunaji ndio wachache, nitakwenda mimi.
Twakuomba sana ee Bwana, tupeleke shambani
Tukavune mavuno yote, yaliyo tayari.

Uwe nami siku kwa siku, Bwana usiniache
Unikinge na majaribu, nilinde daima,
Nipeleke habari njema, ulimwenguni mwote,
Watu wote wakutambue, wakugeukie.
''');
    Song songVocationHymns3 = Song('Palikuwa na Kijana Mmoja', '''
Palikuwa na kijana mmoja jina lake Samweli,
Alikuwa akimcha Mungu tangu utoto wake

Alisikia sauti Ikimwita, Samweli, Samweli *2

Alikuwa 'kiitwa na Mungu, lakini hakujua,
Alikimbilia kwake Eli, Eli hakuelewa

Aliitwa naye Mungu tena, wala hakufahamu,
Eli 'kashangaa akasema: Mimi sikukuita

Alipoitwa mara ya tatu, Samweli akajibu:
Nena, Bwana, mtumishi wako anatega sikio.

Mungu akawa pamoja naye, na Israeli nzima
Ikafahamu kuwa Samweli ndiye nabii wake
''');
    Song songVocationHymns4 = Song('Sauti yake Bwana', '''
Nitume ewe Bwana popote utakapo,
Mimi niko tayari (Bwana) kutangaza injili x2
1. Sauti yake Bwana,
   Yatuita twende kwake x2
2. Wengine hawataki,
   Kutaja jina lako x2
3. Ni wewe tunaomba,
   Usiku na machana x2
4. Ni wewe mlinzi wangu,
   Popote unilinde x2
''');
    Song songVocationHymns5 = Song('Ukiitwa na Yesu', '''
Ukiitwa na Yesu itika, itika, itika, itika
Sema ndiyo itika, itika, itika, itika
Kama siyo mimi mwenyewe
Kama siyo wewe
Kama siyo sisi Wakristu, nani atangaze injili } *2

1. Utapata furaha itika itika ....
2. Utapata amani .... .
3. Utapata faraja ....
4. Utapa Baraka .... .
5. Utapata upendo
6. Utapata neema ...
''');

    Song songSanctus1 = Song('Mtakatifu', '''
Mtakatifu, mtakatifu Bwana, Mtakatifu bwana Mungu wa majeshi.

Mbingu na dunia zimejaa utukufuWako.

Hosana, hosana, hosana, hosana, hosana, juu mbinguni. (x2)

Mbarikiwa yeye ajaye kwa jina la Bwana. Hosana!
''');
    Song songSanctus2 = Song('Hosanna eh', '''
Hosanna eh, hosanna ah
hosanna eh, hosanna eh, hosanna ah (x2)

Él es el santo, es el hijo de María
es el Dios de Israel, es el hijo de David. (x2)
''');
    Song songSanctus3 = Song('Mutakatifu bwana mungu', '''
Mutakatifu bwana mungu, mungu wa majeshi x2
 
Bingu na inchi zimeja utukufu wako x2
 
CHR:  Hosana juu x2 hosana mbinguni, hosanna juu x2 hosana hosanna.
BASS: hosanna x6 hosana juu mbinguni, hosanna hosanna
T.    Hosana juu x2 mbiguni, hosanna juu hosanna hosanna.
 
Bariki wa mwenye kuju kwa jina la bwana x2
''');
    Song songSanctus4 = Song('Mtakatifu (Misa Centinary)', '''
Mtakatifu Mtakatifu
mtakatifu Bwana Mungu
Mtakatifu Mtakatifu
mtakatifu Bwana Mungu wa majeshi *2
Mbingu na dunia zimejaa utukufu
Mbingu na dunia, mbingu na dunia
Mbingu na dunia zimejaa utukufu wako
Zimejaa utukufu wako
Hosanna juu, hosanna juu
Hosanna juu, hosanna juu mbinguni*2
Mbarikiwa yeye ajaye kwa jina
Mbarikiwa yeye, mbarikiwa yeye
Mbarikiwa yeye ajaye kwa jina la Bwana
Ajaye kwa jina la Bwana
Hosanna juu...
''');
    Song songSanctus5 = Song('Oyera, oyera', '''
Oyera, oyera:Mwamba x2 hm!              Oyera:Mwamba, hm!
Oyera:Mwamba x2                         Sindifuna ndidzatsale.

Ambuye Mulungu...Mwamba mwamba hm       Mwini zonse...Mwamba mwamba hm
Zamphamvu...Mwamba mwamba               Sindifuna ndidzatsale
Ngwodala....amene                       Alinkudza...hm
M'dzina la Ambuye                       Sindifuna ndidzatsale.
Hossana kumwambako ...                  Kumwambako ...
Kumwambako ...                          Sindifuna nditsale.
''');
    Song songSanctus6 = Song('Santo, Santo, Santo', '''
Santo, santo, santo, cielo te proclama. 
Santo, santo, santo, es nuestro salvador.
Santo, santo, santo, es el que nos redime,
porque mi Dios es santo,
la tierra llena de su gloria es (x2)

Cielo y la tierra pasarán,
Más tu palabra no pasará ( x2)
No, no, no, pasará,
no, no, no, 
no, no, no, pasará.

Bendito el que viene en nombre del Señor,
Dad gloria a Jesucristo al hijo de David,
hosanna en las alturas a nuestro Redentor,
bendito el que viene en el nombre del Señor.
''');
    Song songSanctus7 = Song("Santo (Everything you've got)", '''
Santo es el Señor,
Dios del universo,
cielo y tierra están llenos de ti.

Bendito el que viene,
en el nombre del Señor,
Hosana en el cielo (x2).
Santo...
''');
    Song songSanctus8 = Song('Santo Hosanna', '''
Santo, Santo, Santo es el Señor
Dios del Universo, llenos están
el cielo y la tierra de tu gloria, hosanna.

{ HOSANNA, HOSANNA, HOSANNA EN EL CIELO. } (x2) 

Bendito el que viene en nombre del Señor,
hosanna en el cielo, hosanna.
ESTRIBILLO.
''');
    Song songSanctus9 = Song('Kedus, kedus', '''
Kedus, kedus, kedus, kedus,
kedus, kedus, lamlakachin. (x2)

Semainamider, semainamider,
Semainamider ysekdulehal. (x2)
(Hosaina)

Hosaina, hosaina, (hosaina)
hosaina, Besemayat.

Begeta yemimeta, 
begeta yemimeta,
begeta yemimeta yeteba rekenehu. (2)

Hosaina, hosaina, (hosaina)
hosaina, Besemayat.
''');
    Song songSanctus10 = Song('Hosanna in the highest', '''
Holy, holy holy (x2)
the angels are singing,
hosanna in the highest.

Hosanna in the highest,
hosanna in the highest,
the angels are singing,
hosanna in the highest.

Blessed is he who comes,
blessed is he who comes
blessed is he who come,
in the name of the Lord
''');
    Song songSanctus11 = Song('Sanctus Malawi', '''
Mwali mukuru
Mwari samasimba mwari musina mugomoo
 
Baba munoera
Munoera*2
Baba munoera
Munoera Mwari Baba
Denga napasi zvizere nambiri yenyu
Baba Munoera Munoera Munoera
 
Ngati simudzire moyo yedu
 
Namanzwiedu tichikudza Mwarimukuru
 
Mbiriya Mwari iriko kudenga na pasi
''');
    Song songSanctus12 = Song('Oyera', '''
Oyera oyera yera
Ambuye Mulungu wa magulu ankhondo akumwamba,
Oyera oyera yera
Ambuye Mulungu wa magulu ankhondo
 
Kumwamba ndi pansi pano
Padzadza ndi ulemu wanu
Hosanna kumwambako
Hosanna hosanna kumwambako oh oh
Hosanna kumwambako
Hosanna  hosanna kumwambako
 
Ngodala iye amene
Akudza m'dzina la mbuye
Hosanna kumwambako
Hosanna hosanna kumwambako oh oh
Hosanna kumwambako
Hosanna  Hosanna kumwambako
 
Oyera oyera yera
Ambuye Mulungu wa magulu ankhondo akumwamba,
Oyera oyera yera
Ambuye Mulungu wa magulu ankhondo
''');
    Song songSanctus13 = Song('Sanctus', '''
Sanctus,  Sanctus,  Sanctus, 
Dominus Deus Sabaoth,
Pleni sunt coeli en terra gloria tua,
hosanna in excelsis,
Benedictus qui venit 
in nomine Domini,
hosanna in excelsis.
''');
    Song songSanctus14 = Song('Santo (Help, Beatles)', '''
Santo, Santo, Santo, Santo
Santo es el Señor.

Llenos están el cielo y la tierra 
de tu amor (x2).

Bendito el que viene en el nombre,
el que viene en el nombre del Señor, del Señor.
''');
    Song songSanctus15 = Song('Holy Creation Mass', '''
Holy x3 Holy Lord God of power and might
A/T/B/. Holy x4 Holy Lord God of power and might x2
Heaven and earth are full of your glory, (hosanna) x3 In the highest x2
CHR: BASS. Hosanna x2
SOP. Hosanna hosa...na hosanna hosa...na hosanna hosanna in the highest x2
A/T/B hosanna x6 in the highest
Blessed is he who comes in the name of the Lord, (hosanna ) x2 in the highest
''');
    Song songSanctus16 = Song('Sanctus Bemba', '''
Mutakatifu alleluia*2
 
mutakatifu pashi pa chipuma chakwe,
mutakatifu pa meso pa bathu pake,
mutakatifu mumulu ba bamumanya
mutakatifu nape wape amen
 
Ase naminwa alleluia*2
Uyu waisa alleluia*2
Aya amalumbo alleluia*2
''');
    Song songSanctus17 = Song('Holy Holy', '''
Holy, Holy, Holy Lord God of hosts.
Heaven and earth are full of your glory.
Hosanna in the highest.
Blessed is he who comes in the name of the Lord.
Hosanna in the highest.
''');
    Song songSanctus18 = Song('Santo', '''
Santo, Santo, Santo, Santo, 
Santo es el Señor,
Dios del universo, 
llenos están el cielo y la tierra,
de tu gloria, Hosanna en el cielo.

Bendito el que viene,
en nombre del Señor,
Hosanna en el Cielo.

Santo, Santo, Santo, Santo, 
Santo es el Señor,
llenos están en cielo y tierra 
de tu amor bendito el que viene en el nombre, el que viene 
en el nombre del Señor,
del Señor (2)
''');
    Song songSanctus19 = Song('Mtakatifu (Misa Kariobangi)', '''
1. [b]  Mtakatifu
   [w]: Mtakatifu Mtakatifu Bwana Mungu
   [b]  Wa majeshi
   [w]  Mbingu na dunia zimejaa tukufu wako
   Hosanna, Hosanna juu Mbinguni
   [Hosanna] Hosanna juu Mbinguni
2. Mbarikiwa
   Anayekuja kwa jina lake Bwana Mungu
''');
    Song songSanctus20 = Song('Holy eee holy', '''
Lord God of power and might*2
Your glory fills the heaven and earth
Lord God of power and might*2
Hosana e! Hosana e! Hosana e!
Hosana to God oh high*2
Blessed is he who comes 
In the name of the Lord*2
''');

    Song songDismissal1 = Song('Happy we are', '''
Happy we are, we should be happy forever more,
Singing together praise His holy name,
ooh he never fails (x2)

Jesus the savior Divine Messiah, we 
adore you,
singing together praise His Holy name,
ooh He never fails.
Jesus the Comforter Divine Messiah, we adore You, 
singing together praise his Holy name,
ooh he never fails.

Jesus the healer Divine Messiah,
we adore You,
singing together praise his Holy name,
ooh he never fails.
''');
    Song songDismissal2 = Song('Whatsoever you do', '''
Whatsoever you do 
to the least of my brothers 
that you do unto me.

When I was hungry 
you gave me to eat. 
When I was thirsty 
you gave me to drink 
Now enter into the 
home of my Father 

When I was homeless 
you opened your door. 
When I was naked 
you gave me your coat 
Now enter into the 
home of my Father 

When I was weary 
you helped me find rest .
When I was anxious
you calmed all my fears.
Now enter into the 
home of my Father 

When in a prison 
you came to my cell 
When on a sick bed 
you cared for my needs. 
Now enter into the 
home of my Father. 

When I was aged 
you bothered to smile 
When I was restless 
you listened and cared. 
Now enter into the 
home of my Father. 
''');
    Song songDismissal3 = Song('By my side (Godspell)', '''
Where are you going?
Where are you going?
Can you take me with you?
For my hand is cold,
And needs warmth,
Where are you going?
Far beyond where the horizon lies,
where the horizon lies,
and the land sinks into mellow blueness,
oh please, take me with you,
let me skip the road with you,
I can dare myself (I can dare myself)
I can dare myself (I can dare myself)
I'll put a pebble in my shoe,
and watch me walk (watch me walk)
I can walk,
I can walk!
I shall call the pebble Dare,
I shall call the pebble Dare,
we will walk, we will talk together,
we will talk about walking,
dare shall be carried,
and when we both have had enough,
I will take him from my shoe, singing,
"Meet your new road!"
Then I'll take your hand,
finally glad,
finally glad,
that you are here (you are here),
By my side, by my side,
by my side, by my side...
(Spoken, by Judas) (Matt. 26:14-16)
Then the man they called Judas Iscariot,
went to the chief priests, and said
"What will you give me to betray Him to you?"
They paid him thirty pieces of silver.
And from that moment, he began to look out for an opportunity,
to betray Him.
By my side
By my side
By my side
By my side...
''');
    Song songDismissal4 = Song('Grazie alla vita', '''
Grazie alla vita, che m'ha dato tanto,
m'ha dato due stelle che, quando le apro,
Io vedo e distinguo il nero dal bianco,
e nell'alto cielo il fondo stellato,
e in mezzo la folla l'uomo che io amo.

Grazie alla vita, che m'ha dato tanto,
m'ha dato il suono e l'abbecedario,
come le parole che pensò e proclamo,
Figlio, madre, amico e camino chiaro,
e la dolce voce di Colui che amo.

Grazie  alla vita che m'ha dato tanto,
m'ha dato il cuore che vuol fuggire,
quando guardo il frutto della mente umana,
quando guardo il bene lontano dal male,
quando vedo dentro il tuo sguardo chiaro.
''');
    Song songDismissal5 = Song('Moyo Wangu Wamtukuza', '''
{(Moyo) Moyo wangu wamtukuza Bwana
(Roho) Roho yangu inafurahi }*2

1. Kwa kuwa amemwangalia, kwa huruma mtumishi wake
   Hivyo tangu sasa watu wote, wataniita mwenye heri
2. Kwa sababu Mwenyezi Mungu, amenifanyia makuu
   Jina lake ni takatifu,
3. Huruma yake ni kwa wote, wote wale wanaomcha
   Kizazi hata na kizazi,
4. Huyatenda mambo makuu, kwa nguvu za mkono wake
   Wenye kiburi hutawanywa,
5. Hushusha wote wenye vyeo, kutoka vitini vya enzi
   Nao wale wanyenyekevu, wote hao huwainua
6. Huwashibisha wenye njaa, na matajiri huwaacha
   Waende mikono mitupu,
7. Hulilinda taifa lake, teule la mtumishi wake
   Akikumbuka huruma yake,
8. Kama alivyowaahidia, babu zetu kuwaahidia
   Ibrahimu na mzao wake,
9. Atukuzwe Baba na Mwana, naye Roho Mtakatifu
   Leo kesho hata milele, kwa shangwe milele amina
''');
    Song songDismissal6 = Song('Himno de la alegría', '''
Escucha hermano
la canción de la alegría,
el canto alegre,
del que espera un nuevo día.

Ven, canta, sueña cantando,
vive soñando un nuevo sol,
en que los hombres
volverán a ser hermanos.

Busca en tu vida
un nuevo rumbo cada día,
para que juntos
canten todos de alegría.

Siempre con fe
has de buscar la amanecida,
en que los hombres
cantarán con alegría.

Si en tu camino
solo existe la tristeza,
y el llanto amargo
de la soledad completa,

Siembra en la vida
una nueva melodía,
que aquí en la tierra
has de encontrar el nuevo día.

Que en tu camino
siempre encuentres la alegría,
búscala hermano
en el vivir de cada día.

Si es que no encuentras,
la alegría en esta tierra,
búscala hermano
más allá de las estrellas.
''');
    Song songDismissal7 = Song('Sois la semilla', '''
Sois la semilla que ha de crecer,
sois la estrella que ha de brillar,
sois levadura, sois grano de sal,
antorcha que ha de alumbrar.
Sois la mañana que vuelve a nacer,
sois la espiga que empieza a granar,
sois aguijón y caricia a la vez,
testigos que voy a enviar.

Id amigos por el mundo
anunciando el amor,
mensajeros de la vida,
de la paz y el perdón.
Sed amigos los testigos
de mi resurrección
id llevando mi presencia
con vosotros estoy.

Sois una llama que ha de encender,
resplandores de fe y caridad,
sois los pastores que han de guiar,
al mundo por sendas de paz.
Sois los amigos que quise escoger,
sois palabras que intento gritar,
sois reino nuevo que empieza, a
engrandar justicia, amor y verdad.
''');
    Song songDismissal8 = Song('Ejokonoi Akuj', '''
Ejokonoi Akuj, Ejokonoi Apa,
Irai yong Apa, nyekeyokon kanga
Eman ibore nabo, eitunitia ayong,
Irai yong Apa, ekeyokan Kang.

Kirit iyong ayong alopuorin lukalimok,
tani ketor ayong lorot lokirionia,
ayeni atamar kirikit iyong,
ngide dae lu kiinak iyong ayong,
ngabaren dae lu kiinak yong ayong,
ngide nyelu, kinaki yong sua,
ngakan nongu na subia etiku konia,
ngiteng nyelu edukasi pasi.
''');
    Song songDismissal9 = Song('Mshukuruni Bwana', '''
Mshukuruni Bwana, 
kwa kuwa ni mwema
kwa maanafadhili zake ni za milele (x2)

Washukao baharini, 
katika merikebu,
wafanyao kazi zao,
katika maji mengi,
hao huziona, kazi za Bwana, 
na maajabu Yake, vilindini.

Maana hao husema,
akavumisha upepo,
na dhoruba ukayainua,
juu mawimbi yake.
Wapanda mbinguni,
watelemka vilindini,
nafsi yao yayeyuka,
kwa hali mbaya.

Wakamlilia Bwana,
wakamlilia katika shida zao, 
akawaponya na shida zao, hutuliza dhoruba ikawa shwari, mawimbi yao yakanyamaza.
''');
    Song songDismissal10 = Song('Bom Pastor', '''
Quando te encontro descanso,
tu reconfortas minha alma.

Cristo Senhor ès o guía
o Bom Pastor  que me conduz
miha vida miha luz (x2)

Por teus caminos me guias,
para louvor do teu nome.

Nao temerei os perigos,
pois sei que tu estas conmigo.

O teou festim me conforta,
faz-me cantas de alegría.

Tua bondade me ajuda,
no viver de cada dia.
''');
    Song songDismissal11 = Song('Anthu onse ovutika (exit)', '''
Anthu onse ovutika, Mayii
Muwamvera  Maria, Amamaa
M'mene alira kwa inu, Mayii
Nakukondani ndithu , Amamaa
 
Maria Amayi Maria
Amayi Maria
Amayi Mutipempherere
Maria Amayi Maria
Amayi Maria
Amayi Ndine Mwanawanu
 
Ine ndine mwana wanu, Mayii
Mawu anga mverani, Amamaa
Ndiwonjezereni mphamvu, Mayii
Ndipambane demoni, Amamaa
 
Nditsanzire ntchito zanu, Mayii
Ndi mphamvu zanga zones, amamaa
Ndikafike m'dzikop lanu, Mayii
Nanu ndikaonane, Amamaa
''');
    Song songDismissal12 = Song('Resta con noi, Signore la sera', '''
Resta con noi, Signore la sera,
resta con noi e avremo la pace.

Resta con noi non ci lasciar,
la notte mai più scenderà,
resta con noi, non ci lasciar,
per le vie del mondo signor.


Ti porteremo ai nostri fratelli,
ti porteremo lugo le strade.

Voglio donarti queste mie mani,
voglio donarti questo mio cuore.
''');
    Song songDismissal13 = Song('¿A dónde vas?', '''
¿A donde vas?
¿A donde vas?
Llévame junto a ti
dentro de mi ser
tengo frío
¿A donde vas?
Mas allá de la eternidad,
de la eternidad,
donde yo pueda ver
con mi mente, Señor,
Llévame tú.
Tomaré la ruta contigo,
buscaré mi paz,
buscaré mi paz,
por los senderos en que tu caminarás, caminarás,
quiero caminar.
Y por todos los senderos
y por todos los senderos
nos iremos caminando
como podamos,
y cuando pueda ver la luz
déjame que yo te cante así:
gracias Señor.
Cogeré tu mano,
me alegraré (bis)
que estés aquí,
a mi lado (x3) a tu lado (x3)
''');
    Song songDismissal14 = Song('Munda wakula', '''
Nyimbo 215

Yesu ati: Munda wakula antchito aperewera,
Ntchito yanga ili yambiri adzandithandiza ndani.
 
CHORUS 1~Ambuye, ndife ana anu, tiwopa tilibe nzeru, Koma inu mukatifuna, ambuye tidzavomera.
CHORUS 2~Pang'onopang'o ndiri kubwera*2 ndigawireni ntchito, ndiripo munditume
 
Yesu ati: kudziko lonse mawu anga alalike,
Kale ndatuma apostoli lero atumike ndani.
 
Yesu ati: ndiwona nkhondo nthawi yonse pansi pano   Ena nga nkhondo ya demoni 
A nkhondo ya ine ndani.
''');
    Song songDismissal15 = Song('Zaeni Matunda Mema', '''
1. Zaeni matunda mema, zaeni matunda yale
   Zaeni yenye baraka, zaeni ya heri
   Bwana akiyapokea, yatabarikiwa vyema
   Zaeni matunda mema, zaeni ya heri
2. Safisha mwenendo wako, safisha matendo yako
   Safisha na Bwana Yesu, safisha yote
3. Fanyeni kazi kindugu, fanyeni kazi kwa bidii
   Fanyeni na Bwana Yesu fanyeni na yote
4. Tolea matendo yako pamoja na moyo wako,
   Naye Bwana Mungu wako atakubariki
5. Baraka za Mungu Baba, baraka za Mungu mwana
   Na za Roho Mtakatifu ziwe nanyi nyote
''');
    Song songDismissal16 = Song('Soy peregrino', '''
Soy peregsongSanctus13songSanctus13ino en esta tierra,
marcho contento hacia Dios;
soy ciudadano de su Reino,
voy anunciando su amor.
 
¡Hay una estrella en mi camino;
la luz divina de la fe,
ella señala mi destino:
llegar a ti, Jerusalén!
 
Soy peregrino y caminante,
soy mensajero de la paz;
traigo a los hombres el mensaje,
que “con nosotros Dios está”.
 
Soy luchador y peregrino,
construir el mundo es mi misión,
y contemplar así el designio
de nuestro Padre Creador.
 
Jerusalén, el mundo nuevo:
ciudad de paz y libertad,
que va surgiendo desde el seno
de nuestra vida terrenal.
''');
    Song songDismissal17 = Song('Zaka Final Hymn', '''
Reef:
Ba kaer ha'u knaar iha mundu tomak ;
Hau sei hamutuk ho o to'o rohan 
Oras to'o Jesus bolu ha'u. 
Jesus ha'u make ne'e. 

Solo:
1. Nai Jesus bolu ha'u 
   Atu servisu natar boot, atu servisu.
   Atu servisu Jesus bolu ha'u: 
   Jesus ha'u make ne'e.
2. Saran vida ba na'I kmanek tebes,
   Nai hanorin, nia mak halo.
   Saran vida ba na'I tamba domin 
   Ha'u oras too ona.
''');
    Song songDismissal18 = Song('Resurrección todo vuelve', '''
Todo  vuele a ser posible,
el gran invierno puede acabarse (x2)

La primavera ha estrellado
en el corazón del hijo del hombre (x2)
''');
    Song songDismissal19 = Song('Quiero cantar', '''
Quiero cantar una linda canción,
de un hombresongSanctus13 que me transformó.
quiero cantar una linda canción,
de Aquel que mi vida cambió.
 
Es mi amigo Jesús,
es mi amigo Jesús.
El es Dios, El es Rey.
es Amor, es Verdad.
sólo en El encontré
esa paz que busqué.
sólo en El encontré
la felicidad.
 
Quiero cantar una linda canción,
a la Madre de Nuestro Señor.
quiero cantar una linda canción,
a aquella que su Hijo nos dio.
 
Es la Madre de Dios,
y es mi madre también.
ella es sol, ella es fe,
es amor y es bondad,
porque de ella aprendí
a querer a Jesús,
porque de ella aprendí,
el saber amar.
''');
    Song songDismissal20 = Song('Here I am, Lord', '''
I, the Lord of sea and sky,
I have heard my people cry,
all who dwell in dark and sin,
my hand will save.
I who made the stars of night,
I will make their darkness bright.
Who will bear my light to them?
Whom shall I send?
 
Here I am, Lord,
is it I, Lord?
I have heard you calling,
in the night,
I will go Lord,
if you lead me,
I will hold your people in my heart.
 
I, the Lord of snow and rain,
I have borne my people's pain,
I have wept for love of them,
they turn away.
I will break their hearts of stone,
give them hearts for love alone,
I will speak my word to them.
Whom shall I send?
 
I, the Lord of wind and flame,
I will tend the poor and lame,
I will set a feast for them,
my hand will save.
Finest bread I will provide,
till their hearts be satisfied,
I will give my life to them.
Whom shall I send?
''');
    Song songDismissal21 = Song('On the willows', '''
On the willows, there,
we hang up our lives,
for our captors there required,
of us songs, and our tormentors myrth (x2)
Saying: sing us one of the songs of Zion! (bis)
But how could we sing,
sing the Lord's songs,
in a foreign Land!

Entre los sauces ajonizamos
mientras los guardias gritaban:
“cantadnos una bella canción”!
Dicen: “cántadnos la canción de Sión”!
Más cómo cantar un himno al Señor,
lejos del hogar!
''');
    Song songDismissal22 = Song('Tominak ekudunyet', '''
Tominak (x2), 
tominak ekudunyet 
ebala Yesu
Ngesi erai akichIket

Ebala yesu eroro , tominak,
lokatokon tani kekokolana a yong a yeni nguna.

Ebala Yesu eroro, tominak,
lokatokon tani kekapilana ayong ayeninguna.
''');
    Song songDismissal23 = Song('Maskani yangu', '''
Mimi ni mpitaji, 
dunia si yangu,
kufika milele sitapata (kweli).

Maskani yangu, maskani yangu,
maskani yangu ni juu mbinguni.

Uzuri wote hapa,
raha zote pia,
hizo zote utaacha hapa (kweli).

Mapambo ya dunia,
na ajabu zake,
ni mfano ulioko mbinguni (kweli).

Yesu alipopaa,
alisema kuwa,
naenda kutengeneza makao (kweli).

Safari ufikapo,
Bwana akwitapo,
hubebi chochote cha dunia (kweli).
''');
    Song songDismissal24 = Song('Mayo Maria', '''
Mayo Maria nyinna wa balanda mayo
Nani waluba mayo
 
Nani waluba Mayo e
Nani waluba mayo ine iyo nani waluba mayo
Ave ave ave Maria
Nani waluba mayo ine iyo nani waluba mayo
 
Tatupepa maria tumucindikisha fye
Nani waluba mayo
 
Aikele bushimbe ukwabula umwaume
Nani waluba mayo
''');
    Song songDismissal25 = Song('This is my story', '''
Blessed assurance, Jesus is mine.
oh what a foretaste, of glory divine!
Heir of salvation, purchase of God.

Born of the spirit, washed in His blood.

This is my story, this is my song,
praising my savior all the day long (x2)

Perfect submission, perfect delight,
vision of rapture now burst on my sight.
Angels descending, bring from above,
echoes of mercy, whispers of love.

Perfect submission, all is at rest,
I in my saviour, am happy and blest.
Watching and waiting, looking above,
filled with His goodness, 
lost in His love.
''');
    Song songDismissal26 = Song('Getsemani', '''
Para que mi amor no sea un sentimiento,
tan solo un deslumbramiento pasajero;
para no gastar mis palabras, más mías,
ni vaciar de contenido mi te quiero.

Quiero hundir más hondo mis raíces en ti,
y cimentar en solidez este mi afecto,
pues mi corazón que es inquieto y es frágil
sólo acierta si se abraza a tu proyecto.

Mas allá de mis miedos, 
más allá de mi inseguridad ,
quiero darte mi respuesta,
aquí estoy para hacer tu voluntad,
para que mi amor sea decirte sí, hasta el final.

Duermen su sopor y temen en el huerto,
ni sus amigos acompañan al maestro;
si es hora de cruz, es de fidelidades,
pero el mundo nunca quiere aceptar esto.

Dame a comprender, Señor,
tu amor tan puro,
amor que persevera en Cruz, 
amor perfecto,
hazme serte fiel cuando todo es oscuro,
para que mi amor sea más, 
que un sentimiento.

Mas allá de......

No es en las palabras ni es en las promesas,
donde la historia tiene su motor secreto,
solo es el amor en la cruz madurado,
el amor que mueve todo el universo.
pongo mi pequeña vida hoy en tus manos,
sobre mis inseguridades y mis miedos,
y para elegir tu querer y no el mío,
para que mi amor sea más que un sentimiento.
''');
    Song songDismissal27 = Song('Resta qui con noi', '''
Le ombre si distendono
scende ormai la será
e s'allontanano dietro i monti
i riflessi di un giorno
Che non finirà, di un giorno
che ora correrà sempre
perchè sappiamo che una nuova
vita da quie è partita e mai più
si fermerà.

Resta qui con noi
il sole scende già,
resta qui con noi
Signore è será ormai.
Resta qui con noi
il sole scende già,
se tu sei fra noi
la notte non verrà.

S'allarga verso il mare
il tuo cerchio d'onda
che il vento spingerà
fino a quando
giungerà ai confini di ogni cuore,
Alle porte del amore vero,
come una fiamma che dove passa
brucia, così il tuo amore
tutto il mondo invaderà.

Davanti a noi l'umanità
lotta, soffre e spera,
come una terra che nell'arsura
chiede l'acqua da un cielo
senza nuvole,
ma che sempre le può dare vita.
Con te saremo sorgente d'acqua pura
con te fra noi il deserto fiorirá.
''');
    Song songDismissal28 = Song('Esci della tua terra', '''
Esci della tua terra e va,
dove ti mostrerò....
Esci della tua terra e va,
Dove ti mostrerò....

Abramo, non partire, non andare,
non lasciare la tua terra,
cosa speri di trovar?
La strada 'e sempre quella, 
ma la gente 'e differente, ti 'e nemica,
dove speri di arrivar?
Quello che lasci tu lo conosci,
il tuo Signore cosa ti d'a?
Un popolo, la terra e la promessa
Parola di Jahve

La rete sulla spiaggia abbandonata,
I'han lasciata i pescatori; son partiti con Gesù.
La folla che osannava se n'e andata,
Ma il silenzio, una domanda,
sembra ai dodici portar,
quello che lasci tu lo conosci,
il tuo Signore cosa ti da?
Il céntuplo quaggiù e l'eternità
Parola de Gesù

Partire non 'e tutto, certamente,
c'e chi parte e non da niente, cerca solo liberta.
Partire con la fede nel Signore,
con I'amore aperto a tutti,
può cambiar I'umanità,
quello che lasci tu lo conosci,
quello che porti vale di più,
andate e predicate il mio Vangelo,
parola de Gesù.
''');

    Song songPeace1 = Song('Ekisilia ekisil', '''
Ekisilia ekisil loka Apa yoko,
yautu ekisil ngitunga, enyara Yesu,
enyar lokatoyoko,
ekisil lo, potu emorikinos,

Ngikanupak emorikinosia atocakasi
nyaremo...
Ngipasain emorikinosia atocakasi
nyaremo...
''');
    Song songPeace2 = Song('Evenu shalom alehem', '''
Evenu, shalom, alehem, (x4)
shalom alehem.
La paz esté con nosotros (x3)
Que con vosotros siempre,
siempre esté la paz.
And the peace be with us, (x3)
evenu shalom, shalom, shalom
alehem.
Amani iwe nasi, (x3)
evenu shalom, shalom, shalom,
alehem.
E sia la pace con noi, (x3)
evenu shalom, shalom, shalom,
alehem.
Es la paix spit avec nous, (x3)
evenu shalom, shalom, shalom,
Alehem.
''');
    Song songPeace3 = Song('Palomas de la paz', '''
Tus manos son palomas de la paz,
puedes tener la suerte de encontrar,
en tus manos palomas de la paz,
la paz que estas buscando,
la regala Dios: Él siembra la semilla,
en nuestro corazón.
Tú puedes conseguir,
que el mundo llegue a ser,
sementera que brota del amor.
No dejes que el rencor,
destruya tu ilusión,
que el odio se despierte,
cuando nace el sol.
Tú puedes construir,
viviendo en libertad,
un camino a la nueva humanidad.
Si luchas en tu vida,
por buscar la paz,
uniéndote a los hombres,
en un mismo amor,
al fin podrás cantar,
gritando la verdad:
son mis manos palomas,
de la paz.
''');
    Song songPeace4 = Song('Nyote ya asubuhi', '''
{Tazameni ya asubuhi inang'aakika yapendeza} x2. 
{Nyota hiyo mama Maria njoni nyote tumshangilie mama} x2
Yeye ndiye bikira amini, yeye ndiye nyumba ya dhahabu
''');
    Song songPeace5 = Song('Peace is flowing like a river', '''
Peace is flowing like a river,
flowing out through you and me;
spreading out into the desert,
setting all the captives free.
Love is flowing like a river,
flowing out through you and me.......
Joy is flowing like a river......
Hope is flowing like a river.....
''');
    Song songPeace6 = Song('Paz, hermano', '''
Paz, hermano, paz,
paz a toda la humanidad,

y que no dure tan solo un momento,
sino toda la eternidad. (2)
Paz para el que sufre,
paz para el que llora,
paz para el que clama libertad,
paz a mi enemigo,
paz en tu camino.
paz a toda la humanidad.
Paz, hermano paz......
''');
    Song songPeace7 = Song('Peace, perfect peace', '''
Peace, perfect peace is the gift of
Christ our Lord x2
Thus says the Lord; will the world
known my friends,
peace, perfect peace,
is the gift of Christ our Lord.
Love, perfect Love....
Faith, perfect faith.....
Hope, perfect hope....
''');
    Song songPeace8 = Song('Simama imara jilinde', '''
Simama imara jilinde
Neno lake Bwana imara
Kesha kila siku uombe
Uombe utasimama
Simama imara jilinde
Neno lake Bwana imara
Kesha kila siku uombe
Uombe utasimama
Milima yote na mabonde
Itayeyuka
Neno lake Bwana imara
Litasimama
Simama
Simama imara jilinde
Neno lake Bwana imara
Kesha kila siku uombe
Uombe utasimama
Simama imara jilinde
Neno lake Bwana imara
Kesha kila siku uombe
Uone utasimama
Kesha kila siku uombe
Kesha kila siku uombe
Uone utasimama
''');
    Song songPeace9 = Song('Wir willen', '''
Wir wirllen Frieden auf Erden(x3)
Wir willen Frieden , Frieden, Frieden
in der Welt.
''');

    Song songAdoration1 = Song('Father we adore you', '''
Father, We adore You.
Lay our lives before You.
How we love You.

Jesus, We adore You.
Lay our lives before You.
How we love You.

Spirit, We adore You.
Lay our lives before You.
How we love You.
''');
    Song songAdoration2 = Song('Nakuabudu Yesu', '''
Nakuabudu, Yesu, katika
hostia, U Mungu kweli na
mwanadamu katika sakramenti
Nakwabudu,
Nakwabudu fudifudi,
Ee Mfalme Mtukufu wa milele

Ee Yesu, kwa mapendo unakaa
kwetu,
U mgeni wetu toka mbinguni,
twakuja kuabudu

Baraka yako, Yesu, utupatie,
tukinge na maovu ya leo,
tuishi kwa amani

Uwabariki pia wapenzi wetu,
uwajalie neema yako, watoe
shukrani kuu
''');
    Song songAdoration3 = Song('Sakramenti Kubwa Hiyo', '''
Sakramenti kubwa hiyo, twaheshimu kifudi
Na sheria ya zamani, ikomeshwe na hiyo
Yafichikayo machoni, imani huyaona *2

Mungu Baba Mungu mwana asifiwe kwa shangwe
Kwa heshima atukuzwe, pia aabudiwe
Mungu Roho Mtakatifu vile sifa apate *2
''');
    Song songAdoration4 = Song('Alhamisi Kuu', '''
Alhamisi kuu Yesu alituwekea
Ekaristia takatifu, chakula cha roho
Tuimbe - tuimbe,
Tumshukuru - tumshukuru Yesu, mkombozi wetu
Tuimbe - tuimbe,
Tumshukuru - tumshukuru Yesu, sadaka yetu

Yesu alishika mkate akaubariki
Akawapa wafuasi, ndio mwili wangu

Na kikombe cha divai akakibariki
Akasema, nyweni nyote, ndiyo damu yangu

Yesu aliwapa amri wanafunzi wake
Fanyeni hivi daima kwa kunikumbuka

Kisha Yesu akaenda apate kuteswa
Akafuta dhambi zetu msalabani juu

Yesu anatutolea mwili na damuye
Naye Baba wa mbinguni anatubariki
''');
    Song songAdoration5 = Song('Lord I lift your Name', '''
Lord I lift Your name on high
Lord I love to sing Your praises
I'm so glad You're in my life
I'm so glad You came to save us

You came from heaven to earth to show the way
From the earth to the cross, my debt to pay
From the cross to the grave, from the grave to the sky
Lord I lift Your name on high

Lord I lift Your name on high
Lord I love to sing Your praises
I'm so glad You're in my life
I'm so glad You came to save us

You came from heaven to earth to show the way
From the earth to the cross, my debt to pay
From the cross to the grave, from the grave to the sky
Lord I lift Your name on high..3
''');
    Song songAdoration6 = Song('Above all', '''
{Above all powers
Above all kings
Above all nature
And all created things
Above all wisdom
And all the ways of man
You were here
Before the world began

Above all kingdoms
Above all thrones
Above all wonders
The world has ever known
Above all wealth
And treasures of the earth
There's no way to measure
What You're worth}..2

{Crucified
Laid behind a stone
You lived to die
Rejected and alone
Like a rose
Trampled on the ground
You took the fall
And thought of me
Above all}..2
''');
    Song songAdoration7 = Song('Al estar aquí', '''
Al estar en la presencia de tu divinidad
al contemplar la hermosura de tu santidad:
mi espíritu se alegra en tu majestad
/ te adoro a ti. / (2)

Cuando veo la grandeza de tu dulce amor
y compruebo la pureza de tu corazón
mi espiritu se alegra en tu majestad
/ te adoro a ti. / (2)

Y AL ESTAR AQUÍ, DELANTE DE TI, TE ADORARÉ
POSTRADO ANTE TI, MI CORAZÓN TE ADORA OH DIOS.
Y SIEMPRE QUIERO ESTAR, 
PARA ADORAR, Y CONTEMPLAR, TU SANTIDAD
TE ADORO A TI SEÑOR TE ADORO A TI.
''');
    Song songAdoration8 = Song('Come Lord Jesus, Maranatha', '''
X4 Come Lord Jesus (Maranatha)
 
X4 njoo bwana yesu (Maranatha)
 
X4 Na geta yesu (Maranatha)
 
X4 Bwerani Mbuye yesu (Maranatha)
 
X4 bua ekapolon yesu (Maranatha)
 
X3 Ven Señor Jesús (Maranathá)
Si ven pronto, Maranatha
''');

    Song songPraiseWorship1 = Song('My faith has found', '''
My faith has found arresting place, not in device or creed I trust the everlasting one his wounds for me shall plead.
 
Ineed no other argument I need no other plea it is enough that Jesus died and that he died for me
Enough for me that Jesus saves, this ends myfear and doubt. Asinful soul I come to him, his will never cast me out.
 
My heart is leaning on the word, the written word of God. Salvation by my saviour's name, salvation through his blood 
 
My great physicians heal the sick, the lost he came to save. For me his precious blood he shed, ofr me his life he gave. 
''');
    Song songPraiseWorship2 = Song('Nearer my God to thee', '''
Nearer my God to thee, nearer to thee, even though it be across that raise me, still all my song shall be
Nearer my God to thee x2 nearer to thee
Though like the wanderer, the sun gone down , darkness be over me, my rest a stone 
Yet in my dreams I'd be, nearer my God to thee......
Or if on joyful wing, cleaving the sky sun, moon and stars forgot, upwards I fly, 
Still all my songs shall be......
Though things go well with me, comfort in life, friends, food and property, money and all 
Still I want shall be......
''');
    Song songPraiseWorship3 = Song('Mungu wetu ni wa ajabu', '''
Mungu wetu ni wa ajabu,
Mungu wetu ni wa ajabu,
Mungu wetu ni wa ajabu

Kanitoa chini, kaniweka juu
Kanitoa juu, kaniweka juu Sana
Mungu wetu ni wa ajabu

Twapendeza, twapendeza
Twapendeza, twapendeza
Mungu wetu ni wa ajabu

Song Composed by Gideon Gido
''');
    Song songPraiseWorship4 = Song('You are Alpha and Omega', '''
You are Alpha and Omega,
we worship you O Lord,
you are worthy to be praised.

We give you all the glory, 
we worship you O Lord
you are worthy to be praised (x2)

Wewe in mwanso, tena mwisho,
twakuabudu, wastahili sifa 
(x2)

Twakupa utukufu,
twakuabudu wastahili sifa (x2)
''');
    Song songPraiseWorship5 = Song('Nafsi yangu', '''
Nafsi yangu usichoke,
roho yangu msifu Bwana,
aliahidi atatenda,
tumainie Bwana.

Ahadi zake ni za milele,
njia zake si kama zetu,
juu zilivyo , juu ya mbingu,
tumainie Bwana.

Kama mvua ishukavyo,
toka mbinguni kwenye ardhí,
na neno lake kwa kinywa chake,
halitarudi bure.
''');
    Song songPraiseWorship6 = Song('Mi pensamiento eres Tú', '''
Mi pensamiento eres Tú Señor,
mi pensamiento eres Tú Señor
mi pensamiento eres Tú Señor,
mi pensamiento eres Tú 

Porque Tú me has dado la vida
porque Tú me has dado el existir
porque Tú me has dado cariño
me has dado amor

Porque Tú me has dado la vida
porque Tú me has dado el existir
porque Tú me has dado cariño
me has dado amor uh...

Mi alegría eres Tú Señor, 
mi alegría eres Tú Señor
mi alegría eres Tú Señor,
mi alegría eres Tú 

Porque Tú me has dado la vida
porque Tú me has dado el existir
porque Tú me has dado cariño
me has dado amor

Porque Tú me has dado la vida
porque Tú me has dado el existir
porque Tú me has dado cariño
me has dado amor uh...

Mi fortaleza eres Tú Señor, 
mi fortaleza eres Tú Señor
mi fortaleza eres Tú Señor, 
mi fortaleza eres Tú 

Porque Tú me has dado la vida
porque Tú me has dado el existir
porque Tú me has dado cariño
me has dado amor

Porque Tú me has dado la vida
porque Tú me has dado el existir
porque Tú me has dado cariño
me has dado amor

Porque Tú me has dado la vida
porque Tú me has dado el existir
porque Tú me has dado cariño
me has dado amor...
''');
    Song songPraiseWorship7 = Song('Que alegria cuando me dijeron', '''
¡Qué alegréa cuando me dijeron
Vamos a la casa del Señor
Ya que están pisando nuestros pies
Tus umbrales Jerusalén!

Jerusalén esté fundada
como ciudad bien compacta;
allá suben las tribus,
las tribus del Señor.

Según la costumbre de Israel
a celebrar el nombre del Señor,
en ella están los tribunales de justicia,
en el palacio de David

Desead la paz a Jerusalén
vivan seguros, los que te aman
haya paz dentro de tus muros
en tus palacios seguridad.

Por mis hermanos y compañeros
Voy a decir, la paz contigo
Por la casa del Señor nuestro Dios
Te deseo todo bien.
''');
    Song songPraiseWorship8 = Song('Vive Jesús', '''
Vive Jesús el Señor,
vive Jesús el Señor.
El vive, El vive, El vive, vive,
vive Jesús, el Señor
''');
    Song songPraiseWorship9 = Song('In Christ alone', '''
In Christ alone my hope is found
He is my light, my strength, my song
This cornerstone, this solid ground
Firm through the fiercest drought and storm
What heights of love, what depths of peace
When fears are stilled, when strivings cease
My comforter, my all in all
Here in the love of Christ I stand

In Christ alone who took on flesh
Fullness of God in helpless babe
This gift of love and righteousness
Scorned by the ones He came to save
Till on that cross as Jesus died
The wrath of God was satisfied
For every sin on Him was laid
Here in the death of Christ I live

There in the ground His body lay
Light of the world by darkness slain
Then bursting forth in glorious day
Up from the grave He rose again

And as He stands in victory
Sin's curse has lost its grip on me
For I am His and He is mine
Bought with the precious blood of Christ
No guilt in life, no fear in death
This is the power of Christ in me
From life's first cry to final breath
Jesus commands my destiny

No power of hell, no scheme of man
Can ever pluck me from His hand
Till He returns or calls me home
Here in the power of Christ I'll stand
''');
    Song songPraiseWorship10 = Song('Vamos a bendecir', '''
Vamos a bendecir al Señor
nosotros los hijos de Dios (x2)

Alzar vuestras manos
batidas a Él y
decirle que solo Él es fiel.

Abrid vuestra boca cantad
para Él y decidle
que solo Él es fiel.

Moved vuestros Cuerpos
danzad para Él y decirle
que solo Él es fiel.

Cerrad vuestros ojos pensar
solo en Él y decirle
que solo Él es fiel.
''');
    Song songPraiseWorship11 = Song('Laudato sii', '''
Laud-ato sii, omi Sig-no-re
Laud-ato sii, omi Sig-no-re
Laud-ato sii, omi Sig-no-re
Laud-ato sii, omi Sig-no-re
Laud-ato sii.
	
Yes, be praised in all your creatures,
brother sun and sister moon,
in the star and in the wind,
air and fire and flowing water.

For our sister, mother earth,
she who feeds us and sustain us for the fruits,
her grass, her flowers,
for the mountain and the oceans.

Praise for those who spread for-give-ness.
those who share your peace with others,
bearing trials and sickness
bravely even sister death won't harm them.

For our life is but a song, and the reason
for our singing is to praise you, for the music,
life and joy of all creation.
''');
    Song songPraiseWorship12 = Song('Praise him', '''
Praise him, praise him, 
praise him in the morning, 
praise him in the noontime.
Praise him, praise him, 
praise him when the sun goes down.

Love him, ...

Trust him, ...

Serve him, ...

Jesus, ...
''');
    Song songPraiseWorship13 = Song('Ee ee Kilipa akuja', '''
Ee ee Kilipa akuja,
Ee nakopin  ya, kilipa akujaa
na subuni ngakopinia
Ee ee kilipi nyakuju kilakaria

Kilipi nyakuj, na kasubuni na subuni kilelebe...
Kilip nyakuj nakasuban, ngina subuni cha anam...
''');
    Song songPraiseWorship14 = Song('Nimeonja pendo lako', '''
Nimeonja pendo lako, 
nimejua u mwema,
nitakushukuru nitawainua wote, wakusifu wewe.
Nitawaongoza vyema, 
waimbe kwa furaha,
nitakushukuru nitawainua wote, wakusifu wewe.

Ukarimu wako (Bwana),
na huruma yako wewe,
msamaha Wako Bwana,
na upole wako wewe.
Umenitendea wema usiyopimika, 
nitakushukuru nitawainua wote wakusifu wewe. (x2)

Kina mama simameni,
piga vigelegele, 
nitakushukuru,
nitawainua wote wakusifu wewe.
Na kina baba nyanyuka,
mkapige makofi, nitakushukuru.......

Watu wote lesalesa,
chezeni kwa furaha....
inua mikono juu,
mshangilieni Bwana, 

Watawa washangilie 
makasisi waimbe,....
walei warukeruke, waseme Aleluya,...

Vitambaa mikononi, vipeperushwe juu,....
na vichwa viyumbeyumbe, 
kwa mwendo wa maringo,....
''');
    Song songPraiseWorship15 = Song('Reign Lord', '''
Reign Lord, reign Lord, Reign Master Jesus reign. Reign your Spirit within our hearts, reign master Jesus reign.
I look at my hands and they look like new,
Reign Master Jesus, reign
I look at my feet and they look like new
Reign Master Jesus, rein.
With my hands I work for you....
On my feet I come to you.....
I look in my heart ad it looks like new.....
I think I'll give it back to you....
''');
    Song songPraiseWorship16 = Song('Demos gracias al Señor', '''
Demos gracias al Señor, demos gracias, 
demos gracias al Señor. (x2)
Por la mañana las aves cantan 
las alabanzas a Cristo Salvador.
Y tú, hermano, ¿por qué no cantas 
las alabanzas a Cristo Salvador? 

Al mediodía las flores cantan 
las alabanzas a Cristo Salvador. 
y tú, hermano, ¿por qué no cantas 
las alabanzas a Cristo Salvador?. 
  
Y por la noche la luna canta 
las alabanzas a Cristo Salvador. 
y tú, hermano, ¿por qué no cantas 
las alabanzas a Cristo Salvador?.
''');
    Song songPraiseWorship17 = Song('Emorikinosia Yesu', '''
Emorikinosia Yesu, sua ka iyong lokanisa.

Emorikinosia, 
Yesu akica kosi ekiyokonia, emorikinosia,
Yesu akiyar kosi ekapolon, emorikinosia,
Yesu anupit kosi ekiyekonia, emorikinosia,
''');
    Song songPraiseWorship18 = Song('I Can Only Imagine', '''
I can only imagine
What it will be like
When I walk by Your side
I can only imagine
What my eyes would see
When Your face is before me
I can only imagine
Yeah
Surrounded by Your glory
What will my heart feel?
Will I dance for You Jesus
Or in awe of You be still?
Will I stand in Your presence
Or to my knees, will I fall?
Will I sing hallelujah?
Will I be able to speak at all?
I can only imagine
I can only imagine
I can only imagine
When that day comes
And I find myself
Standing in the Son
I can only imagine
When all I will do
Is forever, forever worship You
I can only imagine, yeah
I can only imagine
Surrounded by Your glory
What will my heart feel?
Will I dance for you Jesus
Or in awe of You be still?
Will I stand in your presence
Or to my knees will I fall?
Will I sing hallelujah?
Will I be able to speak at all?
I can only imagine, yeah
I can only imagine
Surrounded by Your glory
What will my heart feel?
Will I dance for you Jesus
Or in awe of You be still?
Will I stand in your presence
Or to my knees, will I fall?
Will I sing hallelujah?
Will I be able to speak at all?
I can only imagine, yeah
I can only imagine
I can only imagine, yeah-yeah
I can only imagine
I can only imagine
I can only imagine
I can only imagine
When all I will do
Is forever, forever worship You
I can only imagine
''');
    Song songPraiseWorship19 = Song('Alzad las manos', '''
Alzad las manos 
y dadle la gloria a Dios (x2)
alzad las manos 
y alabadle como niños del Señor.

Dios dijo a Noé construye una barca (x2)
y hazla toda ella de madera como niños de Señor.
Los animalitos subieron de dos en dos (x2)
los elefantes y canguros como niños de Señor.

Los animalitos subieron de dos en dos (x2)
los pajaritos y pingüinos como niños del Señor.

Si tu vas al cielo, primero que yo (x2)
dile a todos esos angelitos que también yo iré.
''');
    Song songPraiseWorship20 = Song('Nimekukimbilia Bwana', '''
Nimekukimbilia ewe Bwana, nisiabike milele, (x2)

Maisha yangu naileta kwako, nisiabike milele.

Masomo yangu nailete kwako, nisiaibike milele.

Wazazi wetu twawaleta kwako, tusiaibike milele.

Kanisa letu twaileta kwako, usiaibilke milele.

Kwa haki yako uniponye uniokoe, nisiaibike milele.
''');
    Song songPraiseWorship21 = Song('La bondad del Señor', '''
La bondad y el amor del Señor
duran por siempre
duran por siempre (x2)

Alabemos al Señor
nos inunda con su amor

Da la paz al corazón
nos inunda con su amor.

Se hace nuestro servidor
nos inunda con su amor.
''');
    Song songPraiseWorship22 = Song('Cuánto he esperado', '''
Cuánto he esperado este momento,
cuánto he esperado que estuvieras aquí,
cuánto he esperado que me hablaras,
cuánto he esperado que vinieras a Mí.
 
Yo sé bien lo que has vivido,
Yo sé bien lo que has llorado,
Yo sé bien lo que has sufrido,
pues de tu lado no me he ido.
 
Pues nadie te ama como Yo, (x2)
mira la Cruz, esta es mi más grande prueba,
nadie te ama como Yo.
Pues nadie te ama como Yo, (x2)
mira la Cruz, fue por ti, fue porque te amo,
nadie te ama como Yo.
 
Yo sé bien lo que me diste,
aunque a veces no me hables,
Yo sé bien lo que en ti sientes,
aunque nunca lo compartas.
 
Yo a tu lado he caminado,
de tu lado no me he ido,
algunas veces te he cargado,
Yo he sido tu mejor amigo.
''');
    Song songPraiseWorship23 = Song('Salva a tu pueblo', '''
Ven a salvar tu pueblo
¿Cuándo lo harás, Señor?
Al pueblo, Dios, al pueblo,
pues hijos tuyos son.
Tú los trajiste a este mundo
y no los puedes olvidar,
pues sin ti perecerán
salva a tu pueblo.

Han racionado el aire
han secuestrado el sol,
Los ricos tienen todo
menos nuestro dolor.
Lo dice el cielo, lo dice el mar
tanta injusticia ha de acabar,
cese el dolor, venga la paz,
salva a tu pueblo.

Oh, Dios, salva a tu pueblo
de todo este dolor
al pueblo, Dios, al pueblo
pues hijos tuyos son.
Salva a tu pueblo de todo este dolor
dale a tu pueblo libertad
sálvalo, sálvalo
salva a tu pueblo.
''');
    Song songPraiseWorship24 = Song('Nada te turbe', '''
Nada te turbe, nada te espante
quien a Dios tiene, nada le falta
nada te turbe, nada te espante
solo Dios basta.

Nothing can trouble, nothing can frighten
those who seek God shall never go wanting;
nothing can trouble, 
nothing can frighten
God alone fills us.
''');
    Song songPraiseWorship25 = Song('Let There Be Love Shared', '''
Let There Be Love Shared Among Us,
Let There Be Love In Our Eyes,
May Now Your Love Sweep This Nation,
Cause Us Oh Lord To Arise.

Give Us A Fresh Understanding
Of Brotherly Love That Is Real,
Let There Be Love Shared Among Us,
Let There Be Love.

Let There Be Love Shared Among Us,
Let There Be Love In Our Eyes,
May Now Your Love Sweep This Nation,
Cause Us Oh Lord To Arise.

Give Us A Fresh Understanding
Of Brotherly Love That Is Real,
Let There Be Love Shared Among Us,
Let There Be Love. [2]
''');
    Song songPraiseWorship26 = Song('Thank you Father', '''
There is a redeemer, Jesus Christ your son
Precious blood of God messiah, Holy holy one
 
Thank you father
Thank you oh my father for giving us your son
And giving us your spirit till the work on Earth is done*2
Jesus my redeemer name above all names
Precious lamb of God messiah, holy holy one
 
When i stand in glory, i will see your face
And there will serve my king forever in his holy place
''');
    Song songPraiseWorship27 = Song('Day by day (Gospell)', '''
Day by day,
day by day,
oh Dear Lord,
three things I pray:
To see thee more clearly,
love thee more dearly,
follow thee more nearly,
day by day.
(repeat 3 more times).

Day by day,
day by day,
day by day,
oh Dear Lord,
three things I pray (Three things I pray)
To see thee more clearly (Day by day)
Love thee more dearly (Day by day)
Follow thee more nearly (Day by day)

Day by day (Day by day)
Day by day (Day by day)
Oh Dear Lord
Three things I pray (Three things I pray)
To see thee more clearly (Day by day)
Love thee more dearly (Day by day)
See thee more clearly (Day by day)
Love thee more dearly (Day by day)
See thee more clearly (Day by day)
Love thee more dearly (Day by day)
See thee more clearly (Day by day)
Love thee more dearly (Day by day)
Follow thee more nearly.

Day by day,
Day by day by day by day by day.
''');

    Song songPsalms1 = Song('Psalms 115 How can I repay the Lord', '''
I trusted even when i said:*
"I am sorely afflicted,"
And when I said in my alarm:*
"No man can be trusted."
 
How can I repay the Lord*
For his goodness to me?
The cup of salvation I will raise;*
I will call on the Lord`s name.
 
My vows to the Lord I will fulfill*
Before all his people.
O Precious in the eyes of the Lord*
Is the death of his faithful.
 
Your servant, Lord, your servant am I;*
You have loosed my bones.
A thanksgiving sacrifice I make:*
I will call on the Lord`s name.
 
My vows to the Lord I will fulfill*
Before all His peoples,
In the courts of the house of the Lord,*
In your midst, O Jerusalem
''');
    Song songPsalms2 = Song('The cry of the poor', '''
The Lord hears the cry of the poor;
blessed be the Lord.
 
I will bless the Lord at all times,
his praise ever in my mouth,
let my soul glory in the Lord,
for He hears the cry of the poor.
 
Let the lowly hear and be glad,
the Lord listens to their pleas,
and to hearts broken he is near,
for he hears the cry of the poor.
 
Ev'ry spirit crushed he will save,
will be ransom for their lives,
will be safe shelter for their fears,
for he hears the cry of the poor.
 
We proclaim the greatness of God,
his praise ever in our mouth,
ev'ry face brightened in his light,
for he hears the cry of the poor.
''');
    Song songPsalms3 = Song('Cantaré', '''
Cantaré,
eternamente,
las misericordias del Señor.
Forever I will sing,
the goodness of the Lord.
''');
    Song songPsalms4 = Song('Quale gioia', '''
Quale gioia mi dissero andremo ala
casa del Signore,
Ora i piedi o Gerusalemme si
fermano davanti a te.

Ora Gerusalemme 'e ricostruita,
come città salda, forte ed unita.

Salgono insieme le tribù di Jahvé,
per lodare il nome del Signore
d'Israele.

Domandate pace per Gerusalemme,
sia pace a chi ti ama, pace alle tue
Mura.

Noi siamo il suo popolo, Egli éil
nostro Dio,
possa rinnovarci la felicità.
''');
    Song songPsalms5 = Song('El Señor es mi luz', '''
El Señor es mi luz,
y mi salvacion,
el Señor es la defensa de mi vida.
Si el Señor es mi luz,
a quien temeré,
quien me hará temblar.
''');

    Song songChristmas1 = Song('Holy night', '''
Oh holy night!
the stars are brightly shining it is the night of the dear Savior's birth! long lay the world in sin and error pining till he appear'd and the soul felt its worth. A thrill of hope the weary world rejoices for yonder breaks a new and glorious morn! Fall on your knees
oh hear the angel voices
oh night divine, oh night when Christ was born
oh night divine
oh night divine
led by the light of Faith serenely beaming
with glowing hearts by His cradle we stand
so led by light of a star sweetly gleaming
here come the wise men from orient land
the King of Kings lay thus in lowly manger
in all our trials born to be our friend.
truly He taught us to love one another
his law is love and His gospel is peace chains shall He break for the
slave is our brother
and in His name all oppression shall cease
sweet hymns of joy in grateful chorus raise we,
let all within us praise His holy name.
''');
    Song songChristmas2 = Song('Hágase', '''
Gabriel, el ángel me saludó
Hola, María, ¿qué tal estás?
Yo aquí jugando, ¿y tú?
Yo aquí volando

Traigo un mensaje del Padre Dios
Serás la Madre del Salvador
¿Cómo lo ves?
Cosas de Dios

Y dije: "hágase"
Y dije: "hágase"
De Dios me fío
Me cae muy bien

Y dije: "hágase"
Y dije: "hágase"
En Dios confío
Todo irá muy bien

Gabriel, el ángel me saludó
Hola, María, ¿qué tal estás?
Yo aquí jugando, ¿y tú?
Yo aquí volando
Traigo un mensaje del Padre Dios
Serás la Madre del Salvador
¿Cómo lo ves?
Cosas de Dios
Y dije: "hágase"
Y dije: "hágase"
De Dios me fío
Me cae muy bien

Y dije: "hágase"
Y dije: "hágase"
En Dios confío
Todo irá muy bien

En Dios confío
Todo irá muy bien

En Dios confío
Seguro que todo irá muy bien
''');
    Song songChristmas3 = Song('Bwana yesu kazaliwa', '''
1. Bwana yesu kazaliwa ,
   Tumwimbiekwa furaha  aleluyah,

   ALELUYAH, ALELUYAH,ALELUYAH,ALEYAH.

2. Kwa ajili yetu sisi ,amezaliwa kitoto
   Aleluyah..

3. Amezaliwa kitoto,nasi tumepewa mwana aleluyah..
4. Utawala na uwezo ,vipo mabegani mwake aleluyah..
5. Jina lake ndilo baba a u milele, tena  mfalme aleluyah..
6. Enzi yake ya kifalme, haitakuwa na mwisho aleluyah..
7. Furaha binti  sioni ,umpokee bwana wako aleluyah..
8. Dunia na ifurahi, nchi na ishangilie aleluyah..
''');
    Song songChristmas4 = Song('Joseph son of David', '''
Joseph son of David do not fear,
to take your wife Mary,
for that she will conceive in a year,
by the power of the holy Spirit.

She will bear, she will bear,
a son and call him Jesus,
He will save the people from fear,
and his name shall be called Emanuel,
Alleluia God be with us.

The wise men from the east so a star,
followed it up to Herod,
and they told him the birth of a king,
He too may worship Him.
''');
    Song songChristmas5 = Song('Vamos pastores, vamos', '''
Vamos pastores, vamos,
vamos a belén,
a ver en aquel niño,
la gloria del edén.

Ese precioso niño,
yo me muero por él,
sus ojitos me encantan,
su boquita también.

El padre lo acaricia,
la madre mira en él,
y los dos extasiados,
contemplan aquel ser (x2)

Yo pobre pastorcillo,
al niño le diré,
no la buenaventura:
Eso no puede ser;

le diré me perdone,
lo mucho que peque,
y en la mansión eterna,
un ladito me de (bis).
''');
    Song songChristmas6 = Song('In dulci jubilo', '''
In dulci jubilo,
nun singet und seid froh,
unsers Herzens Wonne
liegt in praesepio
und leuchtet wie die Sonne
matris in gremio.
Alpha es et O,
Alpha es et O.

O Jesu parvule,
nach dir ist mir so weh.
Tröstet mein Gemüte,
o puer optime,
durch alle deine Güte,
o princeps gloriae.
Trahe me post te,
trahe me post te.
''');
    Song songChristmas7 = Song('Tutaina', '''
Tutaina tuturuma
tutaina tuturumaina
tutaina tuturuma, turuma
tutaina tuturumaina.

Los pastores de Belén
vienen a adorar el niño;
la Virgen y San José
los reciben con cariño.

Tres reyes vienen también
con incienso, mirra y oro,
a ofrecer a Dios su bien
como el más grande tesoro.
''');
    Song songChristmas8 = Song('Astro del Ciel', '''
Astro del Ciel, pargol divin
Mite agnello, Redentor
Tu che i vati da lungi sognar
Tu che angeliche voci annunziar
Luce dona alle menti
Pace infondi nei cuor
 
Astro del Ciel, pargol divin
Mite agnello, Redentor
Tu di stirpe regale decor
Tu virgineo, mistico fior
Luce dona alle menti
Pace infondi nei cuor
 
Astro del Ciel, pargol divin
Mite agnello, Redentor
Tu disceso a scontare l'error
Tu sol nato a parlare d'amor
Luce dona alle menti
Pace infondi nei cuor
https://lyricstranslate.com
''');
    Song songChristmas9 = Song('Jingle bells', '''
Dashing through the snow,
in a one-horse open sleigh,
through the fields we go,
laughing all the way.
Bells on bob-tail ring,
making spirits bright,
what fun it is to ride and sing,
a sleighing song tonight.

Jingle bells, jingle bells,
jingle all the way,
oh what fun it is to ride,
in a one-horse open sleigh, o (x2)

A day or two ago,
I thought I'd take a ride,
and soon Miss Fanny Bright,
was seated by my side;
the horse was lean and lank
misfortune seemed his lot,
we ran into a drifted bank
and there we got upset.

A day or two ago,
the story I must tell,
I went out on the snow,
and on my back I fell;
a gent was riding by,
in a one-horse open sleigh,
he laughed at me as,
I there sprawling laid,
but quickly drove away.

Now the ground is white,
go it while you're young,
take the girls along,
and sing this sleighing song.
just bet a bob-tailed bay,
two-forty as his speed,
hitch him to an open sleigh,
and crack! you'll take the lead.
''');
    Song songChristmas10 = Song('Sing a new song', '''
Sing a new song unto the Lord;
let your song be sung
from mountains high.
sing a new song unto the Lord, singing alleluia.
 
Yahweh's people dance for joy,
O come before the Lord,
and play for Him on glad tambourines,
and let your trumpet sound.
 
Rise O children from your sleep, 
your Savior now has come,
he has turned,
your sorrow to joy
and filled your soul with song.
 
Glad my soul for I have seen,
the glory of the Lord,
the trumpet sounds; 
the dead shall be raised,
I know my savior lives.
''');
    Song songChristmas11 = Song('Ysai yemsrach', '''
Isay yamserach geta tewolde,
Kesemay semayat legña sil worde (2 veces).

Amlak hoy Temsgen silealresahen
Yesusen  Lakeln netsa indiyawetan
Nefse des yibalish Zemri behlilta
Begeta meweled agenyesh irkata.

Isay yamserach geta tewolde,
Kesemay semayat legña sil worde (2 veces).

Yealemu medhin twolde geta
Beberet wust tegña ijg tengelata
Misgana yidresew kibru yisfa geta
Begrgim tewoldo legña tengelata.

Isay yamserach geta tewolde,
Kesemay semayat legña sil worde (2 veces).

Seba Segel metew Setut ij Mensha
Mengesun aweku iske Mechersha
Igzabiher yimsgen Lesten sitota
Kehatiyat Senselet hizbochun Lefeta.

Isay yamserach geta tewolde,
Kesemay semayat legña sil worde (2 veces).
''');
    Song songChristmas12 = Song('Away in a manger', '''
Away in a manger, 
no crib for a bed, the little Lord Jesus laid down his Sweet head. 
the stars in the bright sky looked Down where he lay, the little Lord Jesus asleep on the hay
the cattle are lowing,
the baby awakes,
but little Lord Jesus no crying he makes.
I love thee, Lord Jesus! Look down from the sky,
and stay by my side until morning is nigh.
Be near me Lord Jesus,
I ask thee to stay.
Close by me forever,
and love my I pray.
bless all the dear children,
in thy tender care.
and take them to heaven,
to be with thee there. 
''');
    Song songChristmas13 = Song('Noche de paz', '''
Noche de paz, noche de amor,
todo duerme en derredor,
entre los astros que expanden su luz,
brilla anunciando al niñito Jesús,
Brilla la estrella de paz,
brilla la estrella de paz.
 
Noche de amor, noche de paz,
Jesús nace en un portal,
llena la tierra la paz del Señor,
llena las almas la gracia de Dios.
porque nació el Redentor,
porque nació el Redentor.
 
Noche de paz, noche de amor,
todo canta en derredor
clara se escucha la voz celestial,
llamando al hombre al pobre portal.
Dios nos ofrece su amor,
Dios nos ofrece su amor.
''');
    Song songChristmas14 = Song('Als ich bei meinen Schafen ward', '''
Als ich bei meinen Schafen ward
ein Engel mir die Botschaft bracht.

Des bin ich froh, bin ich froh,
o, o, o, froh, froh, froh, 
benedicamus Domino,
benedicamus Domino.

Der Engel sprach, geboren sei
zu Bethlehem, ein Kindelein. 

Er sprach das Kindlein dort im Stall,
die Welt erlösen würde all.
''');
    Song songChristmas15 = Song('Once in royal city', '''
Once in royal David's city,
stood a lowly cattle shed. 
Where a mother laid her baby,
in a manger for a bed.
Mary was that mother mild,
Jesus Christ her little child.
 
He came down to earth from heaven,
who is God and Lord of all.
and his shelter was a stable, 
and His cradle was a stall.
 
With the poor and mean and lowly, 
lived on earth our saviour Holy.
 
And our eyes at last shall see, through His own redeeming love.
For that child so dear and gentle, is our Lord in heaven above 
and he leads His children on,
to the place where He is gone.
 
Not in that poor lowly stable with the Oxen standing by
we shall Him but in Heaven,
Set at God's right hand on high.
when like stars His children crowned,
all in white shall wait around.
''');
    Song songChristmas16 = Song('Little town of Bethlehem', '''
O little town of Bethlehem,
how still we see thee lie;
above thy deep and dreamless sleep
the silent stars go by;
yet in thy dark streets shineth
the everlasting light.
the hopes and fears of all the years
are met in thee tonight.

For Christ is born of Mary,
and gathered all above,
while mortals sleep the angels keep
their watch of wond'ring love.
o morning stars, together
proclaim the holy birth!
and praises sing to God the king,
and peace to men on earth!
''');
    Song songChristmas17 = Song('Bolingo bwa nzambe', '''
Chrs. Bolingo bwa nzambe, boliki bonene, wana tinde libiso yesu, mobikisi x2
BASS. Salelaka mokonzi, okoyoka esengo (x9)
TEN. Salelaka mokonzi, okoyoka esengo (x8)
ALTO. Salelaka mokonzi...(x7)
SOP. Salela mokonzi iya eee  x2  

moko mokonzi (x3), 
moko salela mokonzi iya ee, salela mokonzi iya eee okoyaka ndeli esengo

Lolaka lanzelu, loye maria, na aboti Emmanueli Kristu mosikoli x2
Mosalela wa nzambe, nandi meliyo, mbo manso malobi yonde, eyelungai x2
Olisumu lya Eve, liwa lyae boyambi bwa maria tozwi libiki x2
Paredizo ya Adam nzela ezepani lelo kristu bomoi na mpe nzela x2
''');
    Song songChristmas18 = Song("Mary's boy child", '''
Long time ago in Bethlehem,
so the Holy Bible say,
Mary's boy child, Jesus Christ,
was born on Christmas day.

Hark, now hear the angels sing,
a new king born today,
and man will live forever more,
because of Christmas Day.

While shepherds watched their flocks by night,
them see a bright new shining star,
them hear a choir singing,
the music seemed to come from afar.

Now Joseph and his wife Mary,
come to Bethlehem that night,
them find no place to born her child,
not a single room was in sight.

By and by they find a little nook
in a stable all forlorn,
and in a manger cold and dark,
Mary's little boy was born.

Trumpets sound and angels sing,
Listen to what they say,
that man will live forever more,
because of Christmas Day.
''');
    Song songChristmas19 = Song('Silent night', '''
Silent night, Holy night;
all is calm, all is bright;
round young virgin mother and child,
holy infant so tender and mild;
sleep in heavenly peace (x2).
 
Silent night, Holy night;
shepherds quake at the sight,
glories stream from heaven afar,
heavenly hosts sing alleluia,
Christ, the Saviour is born (x2).
 
Silent night, Holy night;
son of God, love's pure light
radiant beams from thy holy face;
with dawn redeeming grace;
Jesus, Lord, at thy birth. (x2).
''');
    Song songChristmas20 = Song('The King of glory', '''
The King of glory comes, 
the nation rejoices. 
open the gates before Him 
lift up yours voices.
 
Who is the King of Glory, 
how shall we call Him?
He is Emmanuel,
the promised of ages.
 
In all of Galilee, 
in city or village.
He is among His people
curing their illness.
 
Sing then of David's Son, 
our Saviour and brother,
in all of Galilee 
was never another.
 
He gave His life for us, 
the pledge of salvation,
He took upon himself 
the sins of the nation.
''');
    Song songChristmas21 = Song('My Favourite Time of Year', '''
Lanterns lighting up the town
Peace on Earth is all around
Everything is calm on Christmas Eve
There's goodwill in the air tonight
Angels sing by candle light
Their voices carried on the wind
When carol singers gather 'round
When I hear that festive sound
I wanna join with them and sing!

They sing a merry song and we all sing along
A festive melody that tells us Christmas time is here
See the stars tonight; they're shining bright
'Cause it's Christmas time
And it's my favourite time of year

Deck the halls with boughs of holly
Give me mistletoe; it's the season to be jolly
Wrapping presents, writing cards
Helping decorate the tree
But there's one thing that makes it all for me

When carol singers gather 'round
Angel voices fill the town
It's like the world is joining in
(Noel, Noel, Noel)

They sing a merry song and we all sing along
A festive melody that tells us Christmas time is here
See the stars tonight; they're shining bright
'Cause it's Christmas time and it's my favourite time of year

Christmas Eve
Still believe
So excited
Can't sleep

When the morning comes
Church bells ring
And he's been

They sing a merry song and we all sing along
A festive melody that tells us Christmas time is here
See the stars tonight; they're shining bright
'Cause it's Christmas time and it's my favourite time of year
And it's my favourite time of year
(Noel, Noel)
''');
    Song songChristmas22 = Song('Hark! the herald angels sing', '''
Hark! the herald angels sing,
glory to the newborn King!
peace on earth, and mercy mild,
God and sinners reconciled.
joyful, all ye nations, rise,
join the triumph of the skies;
with th' angelic host proclaim,
Christ is born in Bethlehem.
Hark! the herald angels sing,
glory to the newborn King!
Christ, by highest heaven adored:
Christ, the everlasting Lord;
late in time behold him come,
offspring of the favored one.
veil'd in flesh, the Godhead see;
hail, the incarnate deity:
pleased, as man, with men to dwell,
Jesus, our Emmanuel!
Hark! the herald angels sing,
glory to the newborn King!
Hail! the heaven-born Prince of peace!
Hail! the Son of righteousness!
light and life to all he brings,
risen with healing in his wings
mild he lays his glory by,
born that man no more may die:
born to raise the sone of earth,
born to give them second birth.
Hark! the herald angels sing,
glory to the newborn King!"
''');
    Song songChristmas23 = Song('Three kings', '''
We three kings of Orient are; 
bearing gifts we traverse afar. 
field and fountain,
moor and mountain, 
following yonder star.

O star of wonder, star of night, 
Star with royal beauty bright, 
westward leading, 
still proceeding, 
guide us to thy perfect light.

Born a king on Bethlehem's plain, 
gold I bring to crown Him again, 
King forever, ceasing never over us all to reign.

Frankincense to offer have I. 
incense owns a Deity nigh. 
prayer and praising all men raising, 
worship Him, God on high.

Myrrh is mine: Its bitter perfume 
breathes a life of gathering Gloom 
sorrowing, sighing, bleeding dying, 
sealed in the stone-cold tomb.

Glorious now behold Him arise, 
King and God and sacrifice. 
Alleluia, alleluia! 
sounds through the earth 
''');
    Song songChristmas24 = Song('O Come All Ye Faithful', '''
O Come All Ye Faithful,
joyful and triumphant,
o Come ye,
o Come ye to Bethleham,
come and behold him,
born the king of Angels,

O come let us adore him,
o come let us adore him,
o come let us adore him,
Christ, the Lord!

Sing, choirs of angels,
sing in exultation,
sing, all ye citizens
of heaven above,
glory to God,
glory in the Highest.

Come and behold him,
born the king of Angels,
o come let us adore him
o come let us adore him
o  come let as adore him.
Christ the Lord (x2)
''');
    Song songChristmas25 = Song('Adeste fideles', '''
Adeste fideles, laeti, triumphantes,
venite, venite in Bethlehem;
natum videte regem angelorum.

Venite, adoremus, venite, adoremus,
Venite adoremus, Dominum.

Deum de Deo, lumen de lumine,
gestant puellae viscera,
Deum verum, genitum non factum
''');
    Song songChristmas26 = Song('Des yibelen', '''
Des yibelen des yibelen
Inzemar belilta
Mechegaratchinin ayito werdelin geta (2)

Melaktem zemru semayim demek
Geta meweledun le dihoch tawek amen
Menfes yetzelelewu yekeberwu hitzan 
Medhen tewuled kekftiat liyanatzan amen

Semay tekefet medhenatchin meta
Indiyabasrin yelamkin sitota
Ilil ilil inbel baandenet hulachin 
Ilil ilil inbel bamulu libatchin 

Deges tezegagito yesemayu liul
Baliyu gabezen habtam diha sayil 
Yiwetina gobeta hulum yigabalu
Yezelalem habt
''');
    Song songChristmas27 = Song('Los Reyes Magos', '''
Cuando los reyes vieron al niño,
En un portal cerquita de Belén;
Se confirmó, la tradición más fiel,
que habla de su gloria, hasta la eternidad.
Cuando los reyes vieron al niño,
en un portal cerquita de Belén;
Sin vacilar, el mundo va de fiesta,
y cada corazón musita esta oración.

Dios del cielo, que hiciste la mañana;
Y también, que brille más el sol.
Dios del cielo, bendice Nuestras almas, tú que traes el amor.

Cuando los reyes vieron al niño,
en un portal cerquita de Belén... 
el es la fuente, la luz
resplandeciente,
Señor omnipotente, 
la gloria eres tú.

Dan don, dan din don (x3).

Ya las campanas tocan la fiesta,
porque ha nacido Dios el Salvador;
el sol le dio, De rayos su fulgor,
para loar de gloria toda una
eternidad.

Dios del cielo, Señor del universo,
que a la tierra nos muestra el camino.
Dios del cielo venimos a adorarte,
el que ofrenda el alma mía.
Cuando los reyes, vieron al niño,
en un portal cerquita de Belén;
Sin vacilar, el mundo está de fiesta,
y cada corazón, le canta esta canción.

Dan don, dan din don (bis).

Ya las campanas tocan la fiesta,
porque ha nacido Dios el Salvador;
el sol le dio, de rayos su fulgor,
para loar de gloria toda una eternidad.
Cuando los reyes, vieron al niño,
en un portal cerquita de Belén, 
se confirmó la tradición más fiel 
que habla de su gloria hasta la eternidad (x2)
''');
    Song songChristmas28 = Song('Joy to the world', '''
Joy to the world, the Lord is come
Let Earth receive her King
Let every heart prepare Him room
And Heaven and nature sing
And Heaven and nature sing
And Heaven, and Heaven, and nature sing

Joy to the Earth, the Savior reigns
Let all their songs employ
While fields and floods, rocks, hills and plains
Repeat the sounding joy
Repeat the sounding joy
Repeat, repeat, the sounding joy

He rules the world with truth and grace
And makes the nations prove
The glories of His righteousness
And wonders of His love
And wonders of His love
And wonders, wonders, of His love

{Joy to the world, the Lord is come
Let Earth receive her King
Let every heart prepare Him room
And Heaven and nature sing
(And Heaven and nature sing)
And Heaven and nature sing
(And Heaven and nature sing)
And Heaven, and Heaven, and nature sing
And Heaven, and Heaven, and nature sing}..2
''');
    Song songChristmas29 = Song('Stille Nacht', '''
Stille Nacht, heilige Nacht!
Alles schläft, einsam wacht
nur das traute, hochheilige Paar.
Holder Knabe im lockigen Haar.
Schlaf in himmlischer Ruh!
Schlaf in himmlischer Ruh!

Stille Nacht, heilige Nacht!
Hirten erst kundgemacht,
durch der Engel Halleluja,
tönt es laut bei ferne und nah:
Jesus der Retter ist da!
Jesus der Retter ist da!
''');
    Song songChristmas30 = Song('El tamborilero', '''
Por el camino que lleva a Belén
bajándo el valle que la nieve cubrió,
los pastorcillos quieren ver a su Rey,
le traen regalos en su humilde zurrón,
ropopopóm.
Ha nacido en un portal de Belén,
El niño Diós

Yo quisiera poner a tu pies
algún presente que te agrade Señor,
mas tú ya sabes que soy pobre también,
y no poseo más que un viejo tambor,
ropopopóm.
¡En tu honor frente al portal tocaré
con mi tambor !

El camino que lleva a Belén
Yo voy marcando con mi viejo tambor,
nada mejor hay que yo pueda ofrecer,
su ronco acento es un canto de amor
al Redentor, al Redentor.
Cuando Dios me vió tocando ante Él me sonrió.
''');
    Song songChristmas31 = Song('Go, tell it on the mountains', '''
Go, tell it on the mountains, 
over the hills and ev'rywhere;
go, tell it on the mountains,
that Jesus Christ is born!
 
While shepherds kept their watching,
o'er wand'ring flocks by night,
behold from out of heaven,
there shone a Holy light.
 
The shepherds feared and trembled,
when lo! Above the earth,
rang out the angel chorus,
that hailed our Saviour's birth.
 
Down in a lonely manger,
the humble Christ was born,
and God sent us salvation,
that blessed Christmas morn.

When I was a seeker,
I sought both night and day;
I asked my Lord to help me,
and he showed me the way.
''');
    Song songChristmas32 = Song('Zagalillos', '''
Zagalillos del valle, venid, 
pastorcitos del monte, llegad. 
la esperanza de un Dios prometido, 
ya vendrá, ya vendrá, ya vendrá.

La esperanza, la gloria y la dicha 
la tendremos en Él, ¿quién lo duda? 
desdichado de aquel que no acuda 
con la fe que le debe animar.

Nacerá en un establo zagala, 
pastorcitos venid, adoremos, 
hoy venimos y luego volvemos, 
y mañana los puede salvar.
''');
    Song songChristmas33 = Song('Leo Tumepata Mfalme', '''
{ [ v ] Leo tumepata mfalme
  [ w ] Leo tumepata mfalme, ndiye mtoto Yesu } *2

{ Utukufu juu mbinguni, na amani duniani (kote)
  Kwa watu wenye mapenzi wenye mapenzi mema } *2

1. Malaika kawambia, wachungaji kondeni
   Amkeni upesi, twende Bethlehem
2. Leo mji wa Daudi, kazaliwa mfalme
   Jina lake Emanueli, Mungu pamoja nasi
3. Malaika kawaambia, wale mamajusi
   Kutoka mashariki, kazaliwa mfalme.
4. Mtaona hiyo nyota, kutoka mashariki
   Ndiyo itawaongoza, alipo mfalme.
''');
    Song songChristmas34 = Song('Edounia Ekalakunan', '''
(Ngaya Edounia Ekalakunan
lominata
edoun ekalakunana ka lo
bethelehem nakware
torik etop ngikeyokok ka naikosok
nguni
anyun be edounia ekalakunan
lominata, ikoku a Mariam.)x2)
Yesu nyangaya erai yesu nyakicha,
Yesu nyangaya erai yesu emuron,
Yesu nyangaya erai yesu Eruosita,
Yesu nyangaya erai yesu nyakiyara
''');
    Song songChristmas35 = Song('Njooni Wapenzi (Christmas)', '''
1. Njooni wapenzi tufanye shangwe,
   Mwokozi Bwana amezaliwa
   Viumbe vyote tufanye shangwe
   Mwokozi Bwana amezaliwa
   Na tufanye shangwe, tuimbe aleluya
   Mwokozi Bwana amezaliwa.
2. Malaika alitutangazia -
   Twende pamoja na wachunga -
3. Yeye ni kweli Mwana wa Mungu -
   Mapendo yake hayana mwisho -
4. Hii ni siku ya furaha kuu -
   Mungu mwenyewe atushukia -
5. Tufanye shangwe kwa nyimbo -
   Tumsifu Bwana na kumshukuru -
6. Sisi kwa sisi tupendane -
   Tulifuate pendo la Yesu -
''');
    Song songChristmas36 = Song('God rest ye merry, gentlemen', '''
God rest ye merry, gentlemen
let nothing you dismay.
Remember, Christ, our Saviour
was born on Christmas day.
To save us all from Satan's power,
when we were gone astray.

O tidings of comfort and joy,
comfort and joy.
O tidings of comfort and joy.

In Bethlehem, in Israel,
this blessed Babe was born,
and laid within a manger,
upon this blessed morn.
The which his mother Mary,
did nothing take in scorn.

From God our Heavenly Father
a blessed Angel came;
and unto certain shepherds.
Brought tidings of the same:
how that in Bethlehem was born
the Son of God by name.

"Fear not then," said the Angel,
"let nothing you affright,
this day is born a Saviour
of a pure Virgin bright.
To free all those who trust in Him
from Satan's power and might."

The shepherds at those tidings
rejoiced much in mind,
and left their flocks a-feeding,
in tempest, storm and wind:
and went to Bethlehem straightway
the Son of God to find.

And when they came to Bethlehem
where our dear Saviour lay,
they found Him in a manger,
where oxen feed on hay;
his Mother Mary kneeling down,
unto the Lord did pray.

Now to the Lord sing praises,
all you within this place,
and with true love and brotherhood
each other now embrace;
this holy tide of Christmas
all other doth deface.
''');
    Song songChristmas37 = Song('Los peces en el río', '''
La Virgen se está peinando,
entre cortina y cortina,
los cabellos son de oro,
y el peine de plata fina.

Pero mira como beben, 
los peces en el río,
pero mira como beben,
por ver a Dios "nacío",
beben y beben, 
y vuelven a beber,
los peces en el río, 
por ver a Dios nacer.

La Virgen está lavando,
y tendiendo en el romero,
los angelitos cantando,
y el romero floreciendo.

La Virgen va caminando
va caminando solita,
y no lleva más compaña,
que el niño de la manita.

La Virgen está lavando,
con un poquito jabón,
se le picaron las manos,
manos de mi corazón.
''');
    Song songChristmas38 = Song('Welcome Holy Child', '''
Tears are falling, hearts are breaking,
how we need to hear from God,
you've been promised,
we've been waiting

Welcome Holy Child,
welcome Holy Child.

Hope that you don't mind our manger,
how I wish we would have known,
but long-awaited Holy Stranger,
make yourself at home.
please make yourself at home,
bring your peace into our violence,
bid our hungry souls be filled,
word now breaking heaven's silence

Welcome to our world
welcome to our world

Fragile finger sent to heal us,
tender brow prepared for thorn,
tiny heart whose blood will save us,
unto us is born,
unto us is born,
so wrap our injured flesh around You,
breathe our air and walk our sod,
rob our sin and make us holy.

Perfect Son of God,
perfect Son of God,
welcome to our world.
''');
    Song songChristmas39 = Song('Campana sobre campana', '''
Campana sobre campana,
y sobre campana una,
asómate a la ventana,
verás al niño en la cuna.

Belén, campanas de Belén,
que los ángeles tocan
¿qué nueva me traéis?

Recogido tu rebaño
¿a dónde vas pastorcillo?
“voy a llevar al portal
requesón, manteca y vino”.

Belén, campanas de Belén,
que los ángeles tocan
¿qué nueva me traéis?

Campana sobre campana,
y sobre campana dos,
asómate a esa ventana,
porque está naciendo Dios.

Belén, campanas de Belén,
que los ángeles tocan
¿qué nueva me traéis?

Campana sobre campana,
y sobre campana tres,
en una cruz a esta hora,
el niño va a padecer.

Belén, campanas de Belén,
que los ángeles tocan
¿qué nueva me traéis?
''');
    Song songChristmas40 = Song('Rin Rin', '''
Hacia Belén va una burra
rin, rin.

Yo me la remendaba,
yo me la remendé,
yo me eché un remiendo,
yo me lo quité.

Cargada de chocolate,
lleva su chocolatera
rin, rin.

Yo me la remendaba,
yo me la remendé,
yo me eché un remiendo,
yo me lo quité.

Su molinillo y su anafre,
María, María,
ven acá corriendo,
que el chocolatillo
se lo están comiendo.

En el portal de Belén
rin, rin.

Yo me la remendaba,
yo me la remendé,
yo me eché un remiendo,
yo me lo quité.

Han entrado los ratones,
y al bueno de San José
rin, rin.

Yo me la remendaba,
yo me la remendé,
yo me eché un remiendo,
yo me lo quité.

Le han roído los calzones,
María, María,
ven acá corriendo,
que los calzoncillos,
los están royendo.

En el portal de Belén
rin, rin.
''');

    Song songGlory1 = Song('Utukufu Kwa Mungu (MISA FADHILI)', '''
[t] Utukufu kwa Mungu Mbinguni
[w] Utukufu (kwako) Mungu Mbinguni
Na amani (kote) duniani
(kwa) watu wa mapenzi mema.

1. Tunakuheshimu tunakusifu,
   Tunakuabudu twakutukuza ee Bwana
2. Tunakushukuru mfalme wa Mbingu
   Mwana wa pekee mwana wa Baba ee Bwana
3. Unayeondoa makosa yetu
   Utuhurumie tusikilize ee Bwana
4. Kuume kwa Baba unapoketi
   Mtakatifu mkuu tuhurumie ee Bwana
5. Roho Mtakatifu pamoja nawe,
   Ndani yake Bwana unatukuzwa ee Bwana
''');
    Song songGlory2 = Song('Ekipur, ekipur ni ka Apa yok', ''' 
Bass: Ekipur ekipur nikapayok-o
All: Potu ngitela dang-a, epurosi akuj-a (ekipur-a) nikapayok-o x2
Sop: Potu epurosi
All: Epurosi-a akuj-a potu epurosi, potu epurosi akij yok-o epurosi akuj nakasuban x2
 
1. Epurutu akuj ka ngitoilio luyok ejok akuj, ejok akuj noi
2. Atarama ngibunei ka ngaburuco nayok-o, epurutu, epurutu akuj-a
3. Atolimosi daang-a, ajokis keng nyakuj-a epol akuj, epol akuj kire
''');
    Song songGlory3 = Song('Kipurunoe Akuj', '''
Kipurunoe Akuj-ukalokidiama a nadis, ka ekisil nakwapin, lotunga ngulu ekerito akuj x2
Ka ekisil nakwapin, lotunga ngulu ekerito akuj-u
Lotunga, lotunga, ngulu  ekerito akuj-u
Kimai sua, lotunga ngulu ekerito akuj-u
 
Akuj apa lokesienon kipuro sua iyong- tarai ngipalon ka akuj-u 
sua kilakara iyong kimai sua iyong -  tarai ngipalon ka akuj
 
Lokoku ka akuj lokasuban imesek akuj nibekot-o tarai ngipalon ka akuj-u
Kipiarit iyong sua, akisien ko nee apa- tarai ngipalon ka akuj
 
Kipuro sua iyong kilipit sua iyong- tarai ngipalon ka akuj
Kimai sua iyong kitopolot sua iyong -  tarai ngipalon ka akuj
 
Kipurunoee yesu, yau ekisil nakwapin, yau ekisil nakwapin lotunga ngulu anyakuj x2 
 
Iyong ngolo ilemari ngasecesea angakwapin-tarai ngipalon ka akuj
Iyong ngolo iboi aloteten ee akuj apa
''');
    Song songGlory4 = Song('Gloria, vamos hacia ti', '''
Vamos hacia ti, Señor Jesús,
seducidos por tu fiel amor,
siempre confiando en tu palabra,
que habla al corazón.
Junto a ti, Señor, caminaremos,
sólo tu mirada bastará,
y nos llenará de tu alegría,
de gozo y de paz.

Gloria, Gloria,
siempre serás nuestro Señor (x2)

Tú serás la luz de nuestra vida,
nos darás tu amor y tu perdón.
Nos inundará con su presencia,
tu espíritu, Señor.
Crecerá en nosotros la esperanza,
viviremos en fraternidad,
y proclamaremos por la tierra,
que Tú eres nuestro Dios.
''');
    Song songGlory5 = Song('Gloria, in excelsis Deo', '''
Gloria, Gloria, in excelsis Deo! (x2)
 
Lord God, heavenly King,
Peace you bring to us;
We worship you,
we give you thanks,
we sing our song of praise.
 
Jesus, saviour of all,
Lord God, Lamb of God,
You take away our sins,
Oh Lord!
have mercy on us all.
 
At the Father's right hand,
Lord receive our prayer,
for You alone are the Holy One,
and You alone are  Lord
 
Glory Father and Son,
Glory Holy Spirit,
to you we raise our hands up high,
we glorify your name.
''');
    Song songGlory6 = Song('Utukufu Juu kwa Mungu (MISA KARIOBANGI)', '''
Utukufu juu kwa Mungu, Utukufu juu Mbinguni 
Na amani kote duniani, Kwa wenye mapenzi mema 

1. Tunakusifu tunakuheshimu, tunakuabu tunakutukuza 
   Twakushukuru kwa ajili, ya utukufu wako mkuu 

2. Ewe Mungu ndiye mfalme, wa mbinguni Baba mwenyezi 
   Ewe Bwana Yesu Kristu, wa pekee mwana wa baba 

3. Ewe Yesu mwanakondoo, wa Mungu mwana wa Baba 
   Ewe mwenye kuziondoa, dhambi zetu tuhurumie 

4. Ewe mwenye kuziondoa, za dunia dhambi za watu 
   Ewe mwenye rehema nyingi, upokee maombi yetu 

5. Uketiye kuume kwake, Mungu Baba tuhurumie 
   Kwa kuwa ndiwe uliye, peke yako Mtakatifu 

6. Peke yako ni wewe Bwana, peke yako Bwana mkuu 
   Peke yako ni mkombozi, peke yako Yesu Kristu 

7. Naye Roho Mtakatifu, katika utukufu wake 
   Mungu mmoja anayeishi, na kutawala milele yote.
''');
    Song songGlory7 = Song('Amalumbo', '''
Nsansa ku bakaele panonse tubalumbe
Neshuko ku batemwisha Lesa tubalumbe
Nensansa
Iwe Yesu Khristu uli mfumu tubalumbe 
Mwana wa kwa Lesa niwe weka tubalumbe
Nensansa
Amalumbo kuli Tata aaah aahh
Amalumbo kuli Mwana aaah aah
Amalumbo kuli mweyo aahh aahh
Amalumbo kuli bonse aaaeee
Amalumbo kuli lesa Tataa... Oh Yahweh
Amalumbo kuli lesa Mwana... Oh Yahweh
Amalumbo kuli lesa mweo...Oh Yahweh
Twamilumba twamitotela bonse nensansa.
 
Ufumye miponto yesu niwe tubalumbe
We kanabesa kumo na tata tubalumbe 
Nensasa
Usule filubo fyesu fyonse tubalumbe
Tule kupapata we wa luse tubalumbe 
Nensasa
 
Pamo na mweo mutakatifu tubalumbe
Mu bukata  bwa kwa Lesa Tata tubaleumbe 
Nensasa
''');
    Song songGlory8 = Song('Utukufu kwa Mungu (Amecea)', '''
1. [ t ] Utukufu kwa Mungu juu Mbinguni
   [ w ] Na amani kote duniani
   ( Kwa watu ) wenye mapenzi mema
   Tunakusifu Baba, tunakuheshimu,
   Twakuabudu sisi tunakutukuza
2. Twakushukuru Mungu kwa tukufu
   Wako mkuu ewe Mungu mfalme
   (Ee Baba) wa Mbingu Baba yetu
3. Bwana wetu Mwokozi Yesu Kristu
   Mwana wa pekee wake Mungu
   (Uliye) Mwanakondoo wa Mungu
4. Unayeziondoa dhambi zote
   Za dunia utuhurumie
   (Pokea) pokea ombi letu
5. Wewe unayeketi kuume
   Kwake Baba utuhurumie
   (Sikia) sikia ombi letu
6. Kwani pekee yako ndiwe Bwana
   Peke yako mkuu na mkombozi
   (Pekee) pekee Yesu Kristu
7. Kwa umoja wa Roho Mtakatifu
   Ndani yake Baba watukuzwa
   (Ee Yesu) milele na milele
''');
    Song songGlory9 = Song('A Él que sea la gloria', '''
Gloria a Dios, gloria a Dios,
gloria al Padre (x2)

A Él que sea la gloria (x2)
Aleluya, amén (x2)

Gloria a Dios, gloria a Dios,
gloria al Hijo (x2)

A Él que sea la gloria (x2)
Aleluya, amén (x2)

Gloria a Dios, gloria a Dios
Espíritu Santo (x2)

A Él que sea la gloria (x2)
aleluya, amén, 
aleluya, amén,
aleluya, amén, 
aleluya, amén,
''');
    Song songGlory10 = Song('Amalumbo Bemba', '''
Nsansa ku bakaele panonse
Neshuko ku batemwisha Lesa aahh
Tubapene abene batatu
Ebo yalinga-aa- amalumbo
 
Amalumbo-oo
Amalumbo kuli Tata-aaa
Amalumbo kuli mwana-aaa
Amalumbo kuli mweo-eee
Ebo yalinga-aaa amalumbo
 
Iwe yesu christu uli mfumu
Mwana wa kwa Lesa niwe weka aahh
Tubapele abene batatu-uuu
Ebo yalinga-aaa-amalumbo
 
Ufumye miponto yesu niwe
We kanabesa kumo na ta aahh
Tubapele abene batatu-uuu
Ebo yalinga-aaa-amalumbo
 
Usule filubo fyesu fyonse
Tule kupapata we wa luse eehh
Tubapele abene batatu-uuu
Ebo yalinga-aaa-amalumbo
 
Pamo na mweo mutakatifu
Mu bukata  bwa kwa Lesa Tata aahh
Tubapele abene batatu-uuu
Ebo yalinga-aaa-amalumbo
''');
    Song songGlory11 = Song('Glory to God (peruvian)', '''
Glory to God, glory to God, 
glory to the Father (x2)
 
To Him be glory forever (x2) 
Alleluia, Amen (x4)

Glory to God, glory to God, 
Son of the Father (x2)
Glory to God, glory to God, 
glory to the Spirit (x2)
''');
    Song songGlory12 = Song('EPUROOSI AKUJ', '''
EPUROOSI AKUJ x2 ALO KIDIAMA NADISI TANYUTU NGITUNGA ANGAKWAPIN EKISIL KENGE EE EKISIL, KENGE NGULU ERAKASI NGIPALON KA AKUJ

1.- EEE EKAPOLON AKUJ ERWOSIT A ADIS
AKUJ APA LO KATIONON
KIPURO SUA IYONG
KIMAI SUA IYONG
KILIPIT SUA IYONG
KITOPOLOT SUA IYONG
EKAPOLON AKUJ
IMESEK A AKUJ

2.- LOKOOKENG KA APA...
''');
    Song songGlory13 = Song('Gloria a Dios (Kairoi)', '''
No sé como alabarte, ni qué decir, Señor, 
confío en tu mirada que me abre el corazón; 
toma mi pobre vida que es sencilla ante Ti; 
quiere ser alabanza por lo que haces en mí. 
GLORIA, GLORIA A DIOS, GLORIA, GLORIA A DIOS, 
GLORIA, GLORIA A DIOS, GLORIA, GLORIA A DIOS. 
Siento en mí tu Presencia, soy como Tú me ves; 
bajas a mi miseria, me llenas de tu Paz; 
indigno de tus dones, mas por tu gran Amor,
tu Espíritu me llena, gracias te doy, Señor. 
Gracias por tu Palabra, gracias por el Amor, 
gracias por nuestra Madre, gracias te doy, Señor. 
Gracias por mis hermanos, gracias por el perdón, 
gracias porque nos quieres juntos en Ti, Señor.
''');
    Song songGlory14 = Song('Ye misgana nezmur', '''
Kibir lamlak besemay leminor,
Kibir lamlak besemay leminor.

Besemay leigziabier misgana yihun,
Bego fikad lalachew selam yihun.

Hulun yemitechil ab semayawi negus,
Siletalaku kibir simah yikedes.

Inamaseginhalen inwedisihelen,
Inakebrhalen insegidlhalen.

Yealeman hatiyat yematataf,
Yeigziabier bego hoy kibir yisifa.

Tihut zelotatchenen tekebelen,
Baab kegn yematkemet yiker belen.

Yeab and liyu yehonk amlakatchin,
Yesus kristos hoy yiker belen.

Yesus kristos hoy kedus ante bitcha new,
Geta ante bitcha new lul ante bitcha new.

Kemenfes kedus gar baigziabier,
Ab kibir tigoralehu.
''');
    Song songGlory15 = Song('Glory to God in the highest', '''
Glory to God in the highest,
and on earth peace to men, 
peace to men who are God's friends. 
Glory, glory almighty Father, heavenly King, we praise you 
and we bless you. Glory.
We adore you, we glorify you,
we give you thanks, 
for your great glory. Glory.
 
Lord Jesus Christ,
only son of the Father,
Lord Lamb of God, 
Jesus Christ. Glory.
 
You who take away, 
the sins of the World.
Have mercy, receive our prayers, Glory.
 
You are seated at the right hand of the Father, 
have mercy.
Lord Jesus Christ. Glory.
 
You alone are Holy, 
you alone are Lord,
You alone are most high. Glory.
 
Glory to the Father, 
glory to the Son, 
glory to the Spirit Holy one. 
Amen. Glory.
''');

    Song songMary1 = Song('La elegida', '''
Una entre todas fue la escogida
fuiste tú, María la elegida
madre del Señor
madre del Salvador.

María, llena de gracia
y consuelo,
ven a caminar con nosotros
nuestra madre eres tú (x2)

Ruega por nosotros
pecadores en la tierra
ruega por tu pueblo
que en su Dios espera
madre del Señor
madre del Salvador.
''');
    Song songMary2 = Song('Ave María', '''
Ave María, Ave María
Ave María, Ave María 

Dios te salve María, llena eres de gracia
El Señor es contigo, bendita entre las mujeres,
y bendito es el fruto de tu vientre Jesús,
y bendito es el fruto de tu vientre Jesús.

Santa María, madre de Dios,
ruega por nosotros los pecadores
ahora y en la hora
de nuestra muerte Amén.
ahora y en la hora
de nuestra muerte Amén
''');
    Song songMary3 = Song('Salamu Salamu Maria', '''
[s] Salamu Salamu Maria -
[w] Mama yetu wa fatima
[s] Sisi wana wako - [w] Tunakusalimu *2
1. Uliwambia Francis - Lucia na Jacinta
   Tusali rosari - ili tuokoke
2. Umejaa neema - kuliko wake wote
   Naye Yesu mwanao - amebarikiwa
3. Utuangalie sisi - duniani tulimo
   Shida nyingi zatusonga - tuokoe mama
4. Utuombee Maria - kwa mwanao Yesu
   Ombi letu lifikishe - Mbinguni ulipo
''');
    Song songMary4 = Song(songPeace4.title, songPeace4.lyrics);
    Song songMary5 = Song('Salve marinera', '''
Salve, Estrella de los mares, de los mares,
Iris de eterna ventura;
Salve, ¡oh Féniz de hermosura!
Madre del divino Amor.
De tu pueblo a los pesares
Tu clemencia dé consuelo,
Fervoroso llegue al Cielo
y hasta Tí y hasta Tí nuestro clamor.
Salve... Estrella de los mares,
Si, Fervoroso, llega al Cielo
Hasta Tí, hasta Tí, nuestro clamor,
Salve... Salve, Estrella de los mares,
Estrella de los mares,
Salve... Salve... Salve, Salve
''');
    Song songMary6 = Song('Sisi Wana Wa Dunia', '''
Sisi wana wa dunia,
tukumbuke maneno,
aliyosema Bikira Maria,
alipowatokea watoto wa
Fatima, Lucia, Fransisi, na Jacinta

(alisema tusali, tusali Rozari,
tupate
amani, natuwaombee,
wale wakosefu,
wasio na mwombezi
na wasio mwamini Yesu
Mwokozi, wamuamini ili waokoke) x 2

1. Mama yetu anahuzunishwa sana,
   na matendo yetu maovu,
   anajua adhabu yetu ijayo,
   hivyo anaona huruma sana
2. Ibada ya moyo saﬁ wa Maria,
   tuizingatie daima,
   tupokee komunyo takatifu
   kila Jumamosi ya
   kwanza ya mwezi
''');
    Song songMary7 = Song('Santa María camino', '''
Mientras recorres la vida,
tú nunca solo estás,
contigo por el camino
Santa María va.

Ven con nosotros a caminar,
Santa María, ven (x2)

Aunque te digan algunos
que nada puede cambiar,
lucha por un mundo nuevo,
lucha por la verdad.

Si por el mundo los hombres
sin conocerse van,
no niegues nunca tu mano
al que contigo está.

Aunque parezcan tus pasos
inútil caminar,
tú vas haciendo camino,
otros lo seguirán
''');
    Song songMary8 = Song('Mtima wanga ukutamanda ambuye', '''
Mtima wanga ukutamanda ambuye
Mtima wanga ukutamanda ambuye*2
Ndipo mzimu wanga*2
Ukukondwerera*2
Mpulumutsi wanga oyiye
 
Eya*5 alleluia alleluia
 
Popeza kuti mulungu adayang'ana.....alleluia alleluia
Kuchepa kwamdzakadzi, wake mdzakadzi wake.....alleluia alleluia
Choncho kuyambira lero mibadwo yonse....idzanditcha wodala
Popeza kuti amene ali ndi mphamvu....adandikuza ndithu
Dzina lake loyera loyera yera....dzina lake loyera
 
Ndipo chisoni chake chosatha chochitira.... Alleluia alleluia
Mibadwo ndi mibadwo*2....alleluia alleluia
Dzanja lake lidagwira ntchito zamphamvu....alleluia alleluia
Pakumwaza anthu amitima yodzitama... a mitima yodzitama
Anthu amphamvu adawagwetsa....pa chimpando chao
Nawakweza anthu achabe-chabe....alleluia alleluia
Anthu osauka adawapatsa....zabwino zochuluka
Nawabweza anthu olemera...atawalandazonse
 
Adasamalira bwino anthu ake....Aisraeli
Nawakumbukira kuwachitira chisoni....alleluia alleluia
Monga adauzira makolo athu....alleluia alleluia
Za Abrahamu ndi ana ake.... Ndi kwa nthawi zonse
Ulemu ukhale kwatate ndi kwa mwana....ndi kwa mzimu woyera
Monga padali poyamba ndi masiku onse....ndi panthawi zosatha
''');
    Song songMary9 = Song('María, la madre buena', '''
Tantas cosas en la vida
nos ofrecen plenitud 
y no son más que mentiras
que desgastan la inquietud;
tú has llenado mi existencia
al quererme de verdad,
yo quisiera, madre buena, amarte más.

En silencio escuchabas la palabra de Jesús
y la hacías pan de vida meditada en tu interior.
La semilla que ha caído ya germina y está en flor
con el corazón en fiesta cantaré:

Ave María, Ave María, 
Ave María, Ave María.

Desde que yo era muy niño
has estado junto a mí,
y guiado de tu mano
aprendí a decirte si;
al calor de la esperanza
nunca se enfrió mi fe
y en la noche más oscura fuiste luz.

No me dejes Madre mía, 
ven conmigo a caminar
quiero construir mi vida
y crear fraternidad;
muchas cosas en nosotros son el fruto de tu amor
la plegaria más sencilla cantaré.
''');
    Song songMary10 = Song('Umutima wandi', '''
UMUTIMA WANDI (IYANGU CHINE)
UMUTIMAWANDI ULETASHA LESA
NO MWEO WANDI WA YANGA
MULI LESA UMULUBUSHI WANDI
MULUBUSHI WANDI
 
Aposele amenso pabulanda
Ubwane musha wakwe
Inkulo shonse ukufuma palinomba
Shakula njita uweshuko
 
Panthu lesa umwine wamaka yonse 
Anchitile fikankala
Neshina iyake ili takatifu
Nabalelilumba pee 
 
Noluse lwakwe lwa kubelelela
Pabantu abautina
Asungile  umubonfi wakwe
Pakwibukisho luse lwakwe
 
Ukuboko kwakwe ukwa bulanda
Kwanchitile fikankala
Asalangenye abachilumba
Nabamataki bene
''');
    Song songMary11 = Song('Let It Be', '''
1. When I ﬁnd myselﬁn times of trouble
   Mother Mary comes to me
   speaking words of wisdom, let it be
   And in my hour of darkness
   she is standing right in front of me
   speaking words of wisdom,let it be

Let it be x4
whisper words of wisdom, let it be

2. And when the broken hearted people
   living in the world agree
   there will be an answer, let it be
   For though they may be parted
   there is still a chance that there will be
   there will be an answer, let it be
''');
    Song songMary12 = Song('Ee Mama Yetu Maria', '''
{ Ee mama yetu maria,
Twaomba sana ee mama
Usituache gizani kwa mwanao tuombee } *2

1. Mama yetu Maria, utusikilize
   Sisi wana wako, tunaosumbuka
   Maisha yetu mama, hayana furaha
   Tujaze neema, tupate faraja
   
2. Utuombee kwake, mwanao mpendwa
   Atutie nguvu, tushinde maovu
   Dunia ina giza, dunia ni ngumu
   Bila nguvu yake, hatuwezi kitu
   
3. Tuombee Maria, tuombee mama
   Ili wana wako, tufike mbinguni
''');
    Song songMary13 = Song('O sanctíssima', '''
O sanctíssima, O piíssima,
Dulcis virgo Maria!
Mater amáta, intemeráta,  
Ora, ora pro nobis;
 
Tu solácium et refúgium, 
Virgo, mater María!
Quidquid optamus, per te sperámus;
Ora, ora pro nobis.

Ecce débiles, perquam flébiles, 
Salva nos, O Maria! 
Tolle languóres, sana dolóres, 
Ora, ora pro nobis.

Virgo réspice, Mater, ádspice, 
Audi nos, O Maria.
Tu medicínam portas divínam, 
Ora, ora pro nobis.
''');
    Song songMary14 = Song('Salve, Regina', '''
Salve, Regina, mater misericordiæ.
Vita, dulcedo, et spes nostra, salve. 
Ad te clamamus, exsules, filii Hevae. 
Ad te suspiramus, gementes et flentes in hac lacrimarum valle.

Eia ergo, Advocata nostra,
illos tuos misericordes oculos ad nos converte. 
Et Jesum, benedictum fructum ventris tui, 
nobis post hoc exsilium ostende.
O clemens:
O pia:
O dulcis Virgo Maria.
''');
    Song songMary15 = Song('Be with us Mary', '''
No man can live as an island,
journeying through life alone.
since we are loved by our mother,
Jesus gave us his own.
 
Be with us Mary along the way,
guide every step we take,
lead us to Jesus your loving son;
come with us Mary, come. 
 
When Jesus hung in rejection,
Mary stood by his side.
how can a mother forget her son,
she'll always stand by us.
 
Help us, Star of the Ocean,
be with us in our strife.
when we are faced by temptations,
tossed by the storms of life.

Often for us at life's banquet,
we shall run short of wine,
take us to Cana,
request your son,
to make our lives divine.
''');
    Song songMary16 = Song('AVE Maris stella', '''
AVE maris stella,
Dei Mater alma,
atque semper Virgo,
felix caeli porta.

Solve vincula reis,
profer lumen caecis
mala nostra pelle,
bona cuncta posce.

Monstra te esse matrem:
sumat per te preces,
qui pro nobis natus,
tulit esse tuus.

Virgo singularis,
inter omnes mites,
nos culpis solutos,
mites fac et castos.

Sit laus Deo Patri,
summo Christo decus,
Spiritui Sancto,
tribus honor unus. Amen.
''');
    Song songMary17 = Song('Immaculate Mary', '''
Immaculate Mary, 
thy praises we sing.
who reignest with Christ,
our redeemer and King.

Ave, ave, ave, Maria.
Ave, ave, ave, Maria.

In heaven the blessed thy glory  proclaim.
on the earth we,
thy children invoke thy fair name.

We pray for our Mother,
the church upon the earth,
and bless, holy Mary,
the land of our birth.
''');
    Song songMary18 = Song('Ave María, escúchame', '''
Es verdad que hace tiempo
que te tengo en el olvido
que ni rezo ni me acuerdo
de llevarte rosas rojas a tu altar.

Es verdad que tu nombre
no lo digo desde niño
pero ahora yo necesito que me ayudes
y que olvides, lo que sido.

Ave María, escúchame
ave María, ave María
tú sabes que yo la quiero
y es todo lo que tengo
ave María, escúchame
ave María, ave María,
te pido que no termine
nuestro amor.

Recordarás aquellas flores
que adornaban tu capilla
eran mías, sólo mías
las robaba por las noches para tí.

Recordarás, cuantas veces
te he rezado de rodillas
mis amigos se reían
se reían, al mirarme se reían.

Ave María, escúchame
ave María, ave María
te pido que no termine
nuestro amor.
''');
    Song songMary19 = Song('Toto Maria', '''
Toto,toto,maria ,maata ,toto maria mata
Toto,toto maría maata ngina ikitererengitoe x2
 
Toto (toto maría,maría) toto ngina ebusen maría ngina esienon maria ngina ajokon maría ngina esisilan kilipakinae x2
1. Irereng iyong maria ,ka lokiding ngaaberu ka lokoku kon yesu dae ngolo dae erereng 
2. Kilipakinae maria neni -yesu lokoku kon,isua lu ngikon dee ngikasecak niooi 
3. Kilipakinae maria neni anakwap na angina aronon iyong irai aupwal ka akilip kosi
4. Ibus iyong maria akidwang ,ngaberu dadaang ,ka lokoku kon yesu dae ngolo dae ibus 
''');
    Song songMary20 = Song('Ewe Maria Umebarikiwa', '''
{Ewe Maria
Umebarikiwa kuliko wanawake wote
Umetuzalia Mtoto Mwanaume } *2
Mwenye ufalme mabegani mwake * 2

1. Bikira Maria umebarikiwa kuliko wanawake wote
   Umetuzalia mtoto mwanaume, mtawala ni mfalme wetu

2. Mtoto mwanaume ni Bwana mtawala wa Mbingu na dunia
   Maria ni Mama, ni Mama wa Mungu, pia ni mama yetu sisi

3. Ee Mama wa Mungu tunakupongeza kwa kutuletea Mwokozi
   Maria twaomba maombi yetu yafike kwa Yesu mwanao
''');
    Song songMary21 = Song('Mama Maria pokea zetu salamu', '''
T: Mama Maria pokea zetu salamu!!
All: twakusalimu ee mama wa mkombozi leo twakuimbia tukikushangilia.

Utuombee kwa mwano Yesu Kristu Tupate heri na maisha ya furaha

Maombi yetu pamoja na sala zetu Tifike kwake Yesu mkombozi wetu

Twakusalimu salamu Mama Maria Mbarikiwa uliyee jaa neema

Twakuimbia kwashangwe pia furaha Twakusalimu pokea zetu salamu.
''');
    Song songMary22 = Song('Ave Maris Stellah', ''' 
Hail O star of the ocean, Gods own Mother blest ever sinless virgin Gate of hevenly rest
 
Taking that sweet ave which from Gabriel came, peace comfirm within us changing eve's name
 
Break the sinners fetters make our blindness day chase all evil from us for all blessings pray
 
Show yourself a mother may the world divine born for us your infant hear our prayers through yours
 
Virgin all excelling mildest of the mild free from guilt preserve us meek and undefiled
 
Keep our life all spotless make our way secure till we find Jesus joy for ever more
 
Praise to God the father honor to the son in the Holy Spirit be the gloly on. Amen.
''');
    Song songMary23 = Song("I'll sing a hymn to Mary", '''
I'll sing a hymn to Mary the mother of God,
the virgin of all virgins of David's royal blood.

O teach me Holy Mary,
a loving song to frame,
when wicked men blaspheme thee,
to love and bless thy name.

O noble tower of David of gold and ivory,
the ark of God's own promise,
the gate of heaven to me.

And now, O virgin Mary,
my mother and my queen,
i've sung thy praise, so bless me,
and keep my heart from sin.
''');
    Song songMary24 = Song('Niseme Nini Basi', '''
{ Niseme nini basi juu ya mama Yetu Maria 
(Mama Bikira Maria)
Mama mpendelevu mama mwenye neema } *2

1. Wakati wa majaribu, mwombezi wetu ni Maria (Mama yetu)
   Wakati wa mashaka kimbilio letu ni Mama (Maria)

2. Mama uliyeumbwa, pasipo dhambi ya asili
   Ukamzaa mwanao mkombozi wa walimwengu

3. Moyo wako wa heri moyo safi moyo mweupe
   Nijalie neema nishinde majaribu yote 

4. Mama wa Mkombozi mnara wetu wa Mbinguni 
   Mwangaza wetu sisi tunaosafiri gizani 

5. Shika mkono wangu unionyeshe njia ya kweli
   Nifike kwa Mwanao anakoketi uwinguni
''');
    Song songMary25 = Song('Magnificat (Kairoi)', '''
Mi alma canta el gesto de amor,
se alegra mi espíritu en Dios salvador,
pues Él se fijó en la sencillez y humildad de su sierva.

Santo es nuestro Dios
y su amor perdurará,
y lo recordará cada generación.
y lo recordará cada generación.

Su brazo es fuerte y justo su obrar,
dispersa  a los hombres de mal corazón,
derroca al poderoso, levanta al humilde,
llena al pobre de bienes.

Ha protegido a su esclava el Señor,
a nuestros padres ya lo prometió.
y se acordó de su amor a Abraham por siempre.
''');
    Song songMary26 = Song('Amayi Athu', '''
Pansi pano sadakhale munthu
Wolingana ndi inu Maria
Ndi kumwamba pachimpando chanu
Muli nawo ulemu woposa
 
Amayi athu Maria woyera
Kwa Mulungu tipempherereni 
Atipatse mtendere mumtima 
Chaulere, chimwemwe chikondi
Mbuye Yesu mwana wa Mulungu 
Mulungu yemwe woweruza zonse
Adafuna kubadwa mwa inu, mungakhale wolengedwa wake
 
Wolengedwa ndi Mulungu Atate
Wodzadzidwa ndi zaulere zake mudabala mwana wake yekha ndi mphamvutu za mzimu woyera.
Amayi athu mutikondweretse tikapeza zovuta pansipandi kumwamba mutiperekeze tikadale pa nthawi yosatha.
''');
    Song songMary27 = Song('Hail Mary, Gentle Woman', '''
Hail Mary, full of grace,
the Lord is with you.
Blessed are you among women
and blest is the fruit of your womb, Jesus.
Holy Mary, Mother of God,
pray for us sinners now
and at the hour of death.
Amen. 

Gentle woman, quiet light,
morning star, so strong and bright,
gentle Mother, peaceful dove,
teach us wisdom; teach us love. 

You were chosen by the Father;
you were chosen for the Son.
You were chosen from all women
and for woman, shining one. 

Gentle woman, quiet light,
morning star, so strong and bright,
gentle Mother, peaceful dove,
teach us wisdom; teach us love. 

Blessed are you among women,
blest in turn all women, too.
Blessed they with peaceful spirits.
Blessed they with gentle hearts. 
''');
    Song songMary28 = Song('Ave Maria, gratia plena', '''
Ave Maria, gratia plena.
Maria, gratia plena,
Maria, gratia plena,
ave, ave dominus,
dominus tecum.
Benedicta tu in mulieribus,
et benedictus
et benedictus fructus ventris
ventris tui, Jesus.
ave Maria.
Sancta Maria,
ora pro nobis,
nobis peccatoribus,
nunc et in hora
mortis nostrae.
Amen
''');
    Song songMary29 = Song('Mama kanisa ni nani', '''
Mama kanisa ni nani,
bikira Maria (x2)

Alimkanyaga shetani,
akamnyang'anya uwezo,
bikira Maria (x2)

Mama  watoto ni nani, 
bikira Maria (x2)

Mama wazee ni nani,
bikira Maria (x2)

Mama  upendo ni nani,
bikira Maria (x2)
''');
    Song songMary30 = Song('Salve Rociera', '''
Dios te salve, Maria,
del Rocio Senora.
Luna, Sol, Norte y Guia
y pastoro celestial.
Dios te salve, Maria,
todo el pueblo te adora
y repite a porfia:
como Tu no hay otra igual.

Ole, ole, ole, ole, ole,
ole, ole, ole, ole, ole, ole, ole
ole, ole, ole, ole, ole, ole, ole,
Al Rocio yo quiero volver
a cantarle a la Virgen con fe con un
ole, ole, ole, ole, ole
ole, ole, ole, ole, ole, ole, ole,
ole, ole, ole, ole, ole, ole, ole.
Al Rocio yo quiero volver
a cantarle a la Virgen con fe con un ole.

Dios te salve, Maria,
manantial de dulzura.
A tus pies noche y dia
te venimos a rezar.
Dios te salve, Maria
un rosal de hermosura.
Eres Tu, Madre mia,
de pureza vrginal.

Ole, ole, ole, ole, ole,
ole, ole, ole, ole, ole, ole, ole,
ole, ole, ole, ole, ole, ole, ole,
Al rocio yo quiero volver
a cantarle a la Virgen con fe con un
ole, ole, ole, ole, ole,
ole, ole, ole, ole, ole, ole, ole,
ole, ole, ole, ole, ole, ole, ole,
''');
    Song songMary31 = Song('Umsihi Mwanao', '''
Umsihi mwanao Yesu, Maria,
asamehe makosa yangu
Anitoe mashaka yote, Maria,
yaliyomo moyoni mwangu
Maria unisaidie Maria, Maria uniokoe
Mimi mwanao mwenye dhambi

1. Nionee huruma mama, mimi niliye mpotevu
   Mwili wangu ni dhaifu, kwa sababu ya dhambi zangu
   
2. Na magonjwa niponye mama, kwa jina la mwanao Yesu
   Naye Roho mtakatifu, imarishe nguvu zangu
''');
    Song songMary32 = Song('Tunakushukuru Mama Maria', '''
Tunakushukuru Mama Maria,
Kwa neema unazotujalia
Asante mama wa Yesu uliye na huruma
Uzidi kutuombea mpaka saa ya kufa

1. Mama wa Yesu, mama mfariji wetu
   Asante sana kwa kutusimamia
2. Neema zako zinatututia nguvu
   Asante mama Maria mtakatifu
3. Tuna furaha, tuna matumaini
   Kwa kuwa tunawe mama wa huruma
4. Mama wa Yesu, wee Mama Maria
   Tusaidie tushinde vishawishi
5. Katika mbingu ndiwe mbarikiwa
   Katika maisha ndiwe kinga yetu
''');
    Song songMary33 = Song('Jina Maria', '''
Jina Maria jina tukufu lafurahisha latuliza
Hata malaika wanaliimba,
Ave ave Maria, Ave ave ave Maria
Wakisema (siku zote) bila mwisho
Ave Maria! Ave ave ave Maria 

1. Jina Maria jina tukufu, lafurahisha la tutuliza
2. Jina Maria jina tukufu, latuletea neema ya Mungu
3. Jina Maria jina tukufu, lawafukuza pepo wabaya
4. Jina Maria jina tukufu, lawapendeza watakatifu
''');
    Song songMary34 = Song('Andrò a vederla un di', '''
Andrò a vederla un di in cielo patria mia,
Andrò a veder Maria, mia gioia e mio amor.

Al ciel, al ciel, al ciel, andrò a vederla un di!
Al ciel, al ciel, al ciel, andrò a vederla un di!

Andrò a vederla un di, é il grido di speranza,
che infondermi costanza nel viaggio e fra i dolor.

Andrò a vederla un di, andrò a levar i miei canti,
coi angeli e coi santi per corteggiarla ognora.
''');
    Song songMary35 = Song('Arcilla entre sus manos', '''
Eres madre muy sencilla, 
criatura del Señor
virgen pobre, madre mía 
llena de gracia y de amor.
fuiste arcilla entre sus manos
y el Señor te modeló,
aceptaste ser tu esclava
siempre dócil a su voz.

Yo quiero ser
arcilla entre sus manos
yo quiero ser
vasija de su amor
quiero dejar lo mío para Él, para Él.

No entendías sus palabras
pero respondes con fe
dejas que su amor te guie
confiando siempre en Él
por su espíritu de vida,
te dejaste transformar
te abandonas en sus manos
para hacer su voluntad.
''');
    Song songMary36 = Song('Mira il tuo popolo', '''
Mira il tuo popolo, bella Signora,
che pieno di giubilo oggi ti onora,
anch'io festevole corro ai tuoi pié,
o santa Vergine prega per me,
o santa Vergine prega per me.

Il pietosissimo tuo dolce cuore,
egli 'e rifugio al peccatore,
tesori e grazie rachide in sé,
o santa Vergine prega per me,
o Santa Vergine prega per me.

Il questa misera vale infelice,
tutti ti innocano soccorritrice,
questa bel titolo conviene a te,
o santa Vergine prega per me,
o Santa Vergine prega per me
''');
    Song songMary37 = Song('Daily, daily', '''
Daily daily sing to Mary,
sing my soul, her praises due.
all her feasts, her actions worship,
with the heart's devotion true,
lost in wond'ring contemplation,
be her majesty confessed,
call her mother call her virgin,
happy mother, virgin blest.

She is mighty to deliver,
call her, trust her lovingly.
when the tempest rages round thee,
she will calm the troubled sea.
gift of heaven she has given,
noble Lady to our race,
she the queen, who decks her subjects,
with the light of God's own grace.

All our joys do flow from Mary,
all then join her praise to sing.
trembling, sing the virgin mother,
mother of our Lord and King,
while we sing her awful glory,
far above our fancy's reach,
let our heart be quick to offer,
love the hearts alone can reach.
''');
    Song songMary38 = Song('Regina Caeli laetare', '''
Regina Caeli laetare, alleluia:
quia a quem meruisti portare, alleluia.
resurrexit sicut dixit, alleluia
ora pro nobis Deum, alleluia
''');
    Song songMary39 = Song('Hail Virgin most holy', '''
Hail Virgin most holy,
in mercy descending to save us,
poor sinners from sorrow unending.

Ave, ave, ave Maria.
Ave, ave, ave, Maria

Hail great mediatrix forever bestowing,
the graces from Jesus unceasingly flowing.

Our homes and our country we, place thy keeping,
to love thee and serve thee in gladness and weeping.

Thy message we hear with its gentle appealing,
for penance and prayer that the world may find healing.

O queen of rosary, 
be thou our salvation,
our refuge in life and our true consolation.
''');
    Song songMary40 = Song('Madre de Hakuna', '''
Llévame contigo
A todos lados
Que pueda dormir tranquilo
Bajo tu precioso manto
Y llévame contigo
Y no me sueltes de la mano
Y que cuando sienta frío
Note tu cálido abrazo
Y llévame contigo
A donde quieras
Y es que no hay mayor consuelo
Que una madre que te quiera
Y que algún día pudiera
Al cielo ir por tu escalera
Y entender que contigo, madre querida
Valió la pena
Que no me canse nunca de mirarte
Y repetir con humilde devoción
Te quiero con locura, preciosa madre
Tú, el mejor regalo de mi Dios
Que no me canse nunca de mirarte
Y repetir con humilde devoción
Te quiero con locura preciosa madre
Tú, madre de Hakuna
Ay, ay, ay, mi corazón
''');
    Song songMary41 = Song('Magnificat--Alleluia mtima wanga', '''
Alleluia mtima wanga, mtima wanga ukutamanda, ukutamanda ambuye, mzimu wanga, ukondwerera Mulungu mpulumutsi wanga. *2
Popeza kuti Mulungu adayang'ana*
kuchepa kwa mdakadzi wake alleluia
Choncho kuyambira lero mibadwo yonse* mibadwo yonse idzanditcha wodala. 
Popeza kuti amene ali ndi mphamvu zonse* adandikuza mdzina lake loyera
Chisoni chake chosatha chochitira mibadwo* 
Ya anthu amene alikumuopa,
Dzanja lake lidagwira ntchito za mphamvu alleluia*
Pakumwaza anthu amitima yodzitama.
 
Anthu amphamvu adawagwetsa pansi pachimpando chawo*
Nawakweza anthu achabe chabe.
Anthu osawuka adawapatsa zabwino zochuluka *
Nabweza olemera atawalanda zonse.
Adasamalira bwino anthu ake Aisraeli*
Nakumbukira kuwachitira chisoni.
Monga adauza makolo athu za Abrahamu*
Ndi ana ake kwa nthawi zonse alleluia.
Ulemu ukhale kwa atate ndi kwa mwana wake*
Ndi kwa mzimu woyera woyera year
Monga panali poyamba poyamba ndi tsopano masiku onse*
Ndi panthawi zosatha zosatha Amen.
''');
    Song songMary42 = Song('Holy Queen we bend before thee', '''
Holy Queen we bend before thee,
Queen of purity divine,
make us love thee, we implore thee
make us truly to be thine.

Teach O teach us, holy mother,
how to conquer every sin,
how to love and help each other
how the prize of life to win.

Thou to whom a child was given,
greater than the sons of men,
coming down from highest heaven,
to create the world again.

Oh by that almighty maker,
whom thyself, a virgin bore,
oh by the Supreme Creator,
linked with thee forever more.

Oh the hope thy name inspires,
by our doom, reversed through, thee,
help us Queen of angel choirs,
to a blest eternity.
''');
    Song songMary43 = Song('Mata, Mata, Maria', '''
Mata, Mata, Maria,
Ikimayo, ikimayo, 
Iyong toto kiteyarae.

Yau akiru nakwap kosi...
Yau ajoko nakwapi kosi...
Yau ekisil nakwap kosi...
''');
    Song songMary44 = Song('Tumsifu Maria', '''
1. Tumsifu Maria, enyi wanae,
   tutoe salamu, tumshangilie
   
   Salamu, salamu, salamu Maria *2
   
2. Nyota ya bahari, mlango wa mbingu
   Mwondoa hatari, mama wa Mungu
   
3. Maria bikira, ndiwe mteule
   Umechaguliwa tangu milele
   
4. Hakuna mwombaji aombaye
   Kwa Kristu Mwokozi kuliko wewe
   
5. Mametu mbinguni tumshangilie
   Mwanao mpenzi pamoja nawe
''');
    Song songMary45 = Song('Junto a ti María', '''
Junto a ti María,
como un niño quiero estar,
tómame en tus brazos
guíame en mi caminar.

Quiero que me eduques,
que me enseñes a rezar,
hazme transparente,
lléname de paz.

Madre, Madre,
Madre, Madre.
Madre, Madre,
Madre, Madre.

Gracias Madre mía
por llevarnos a Jesús,
haznos más humildes
tan sencillos como Tú.

Gracias Madre mía
por abrir tu corazón,
porque nos congregas
y nos das tu amor.
''');
    Song songMary46 = Song('Maróa, madre del dolor', '''
Madre, vengo ante ti,
mis hermanos están sufriendo hoy
te presento al que nunca rezó
porque nadie le ha hablado de ti
madre, vengo ante Ti
y te ofrezco sus penas y el dolor,
El llanto de aquel niño sin hogar
y el viejo que hoy vive en soledad.

María, madre del amor,
das tu corazón al pie de la cruz.
María, madre del dolor,
llévanos siempre junto a ti (2)

Madre, te quiero rezar
con la fe del enfermo en su dolor,
con aquél que le cuesta pensar,
pero vive la fiesta interior.
madre,  quiero recordar
al hambriento y al que sueña libertad
a aquel que es marginado sin razón,
o muere, tal vez, por sembrar la paz.
''');

    Song songPenitencialRite1 = Song('Aseach aseach', '''
(TENOR) Aseach x2 aseach ayong, aseach ayong alongaren Akuj, (ngesi abala)x2
Iyong apa aseach ayong alongaren akuj x2 (Bass mmmmh) tokona ngikaitotoi kangakaitotoi, kilipakinae kaneni akuj x2

(SOP) 1. Ebele lokang kachaka ayong kisimek Akuj kang
TENOR: Woi woi Akuj torimakinae

(SOP) 2. Emalanu lokang kachaka ayong kisimek Akuj kang
TENOR: Woi woi Akuj torimakinae

(SOP) 3. Ebari lokang kachaka ayong kisimek Akuj kang
TENOR: Woi woi Akuj torimakinae

(SOP) 4. Ekinis lokang kachaka ayong kisimek Akuj kang
TENOR: Woi woi Akuj torimakinae
''');

    Song songHolySpirit1 = Song("L'Esperit del Senyor", '''  
L'esperit del senyor 
vindrá a vosaltres
no tingueu por 
d'obrir de bat a bat 
El vostre cor al seu amor 

Ell transformarà les vostres vides 
us donarà un cor per a estimar. 
serà foc que purifica, 
força en l'actuar. 

Ell transformarà les vostres penes, 
us sabreu fills sues ben estimats; 
vostre cor obriu joiosos 
a la llibertat. 

Ell transformarà tota feblesa, 
us dirà com heu de pregar; 
posarà en els vostres llavis 
paraules de bondat. 

Ell canviarà tota tristesa 
pel gran goig de la fraternitat, 
vostre cor obriu joisos 
a la llibertat.
''');
    Song songHolySpirit2 = Song('Bautízame Señor con tu Espíritu', '''
Bautízame Señor con tu Espíritu
bautízame Señor con tu Espíritu 
bautízame Señor con tu Espíritu 
bautízame, bautízame Señor 

Y déjame sentir
el fuego de tu amor 
aquí en mi corazón Señor (x2) 

Sáname Señor
renuévame Señor
Lléname Señor
''');
    Song songHolySpirit3 = Song('The Spirit Carries On', '''
Where did we come from?
Why are we here?
Where do we go when we die?
What lies beyond
And what lay before?
Is anything certain in life?
They say, "Life is too short"
"The here and the now"
And "You're only given one shot"
But could there be more
Have I lived before
Or could this be all that we've got?

If I die tomorrow
I'd be all right
Because I believe
That after we're gone
The spirit carries on
I used to be frightened of dying
I used to think death was the end
But that was before
I'm not scared anymore
I know that my soul will transcend
I may never find all the answers
I may never understand why
I may never prove
What I know to be true
But I know that I still have to try

If I die tomorrow
I'd be alright
Because I believe
That after we're gone
The spirit carries on

Safe in the light that surrounds me
Free of the fear and the pain
My questioning mind
Has helped me to find
The meaning in my life again
Christ is real
I finally feel
At peace with God in my dreams
And now that I'm here
It's perfectly clear
I found out what all of this means

If I die tomorrow
I'd be alright
Because I believe
That after we're gone
The spirit carries on

MCSPA Version
''');
    Song songHolySpirit4 = Song('El Espíritu del Señor', '''
El Señor os dará
su Espíritu Santo
ya no temáis
abrid el corazón
derramará todo su amor (x2)

Él transformará hoy vuestra vida
os dará la fuerza para amar
no perdáis vuestra esperanza
Él os salvará
Él transformará todas las penas
como a hijos os acogerá
abrid vuestros corazones
a la libertad.

Fortalecerá todo cansancio
si al orar dejáis que os de su paz
brotará vuestra alabanza
Él os hablará
os inundará de un nuevo gozo
con el don de la fraternidad
abrid vuestros corazones
a la libertad.
''');
    Song songHolySpirit5 = Song('The Spirit lives to set us free', '''
Verse 1
The Spirit lives to set us free, 
Walk, walk in the light; 
He binds us all in unity, 
Walk, walk in the light. 
 
Chorus
Walk in the light, 
Walk in the light, 
Walk in the light, 
Walk in the light of the Lord. 
 
Verse 2
Jesus promised life to all, 
Walk, walk in the light; 
The dead were wakened by his call, 
Walk, walk in the light. 
 
Chorus
Walk in the light, 
Walk in the light, 
Walk in the light, 
Walk in the light of the Lord. 
 
Verse 3
He died in pain on Calvary, 
Walk, walk in the light; 
To save the lost like you and me, 
Walk, walk in the light. 
 
Chorus
Walk in the light, 
Walk in the light, 
Walk in the light, 
Walk in the light of the Lord. 
 
Verse 4
We know his death was not the end, 
Walk, walk in the light; 
He gave his Spirit to be our friend, 
Walk, walk in the light. 
 
Chorus
Walk in the light, 
Walk in the light, 
Walk in the light, 
Walk in the light of the Lord. 
 
Verse 5
The Spirit lives in you and me, 
Walk, walk in the light; 
His light will shine for all to see, 
Walk, walk in the light. 
 
Chorus
Walk in the light, 
Walk in the light, 
Walk in the light, 
Walk in the light of the Lord. 
''');
    Song songHolySpirit6 = Song('Uje Roho Mfariji', '''
{ Uje Roho mfariji, shusha kwetu mapaji yako
Roho Mungu njoo } *2

1. Tushushie hekima tukupende daima
   Tujalie akili, tufahamu imani, Roho Mungu njoo

2. Tujalie shauri, tuchague vizuri
   Nguvu iwe tayari, tushindane hodari, Roho Mungu njoo

3. Utujaze elimu, mafundisho tuelewe
   Tuwashie ibada, na uchaji wa Mungu, Roho Mungu njoo
''');
    Song songHolySpirit7 = Song('Spirit of God', '''
Spirit of God in the clear running water,
blowing to greatness the trees on the hill,
spirit of God in the finger of morning

Fill the earth, bring it to birth,
and blow where you will,
blow, blow, blow till I be
but the breath of the spirit,
blowing in me (x2)

Down in the meadow the willows moaning,
sheep in the pasture land cannot still,
spirit of God creation is growing.

I saw the scar of the year that lay dying.
heard the lament of a lone whippoorwill,
spirit of God see that cloud crying.

Spirit of God every man's heart is lonely,
watching and waiting and hungry until,
spirit of God we long that you only.
''');
    Song songHolySpirit8 = Song("L'Esperit de Deu", '''
L'Esperit de Deu omple l'univers:
esperit d'Amor que ens guarda a tots en la unitat.
l'Esperít de Deu omple l'univers:
esperit d'Amor que ens dóna la forca d'estimar.

oh Senyor! oh Senyor!
amb l'impuls del teu amor volem bastir
un món nou, on regni la pau, l'amor i el bé.
Oh Déu meu! Oh Déu meu!,
l'Esperit que hi ha en nosaltres ens fa dir
a una veu: "Tot el que tenim és un do teu".
''');
    Song songHolySpirit9 = Song('Inakuwaje Tunasikia', '''
Inakuwaje tunasikia maneno, wanayosema,
kwa lugha yetu wenyewe
Tunasikia mambo hayo ya Mungu, wanayosema,
kwa lugha yetu wenyewe

{ Wao ni wa Galilaya, na si ni wa makabila,
Ya kutoka nchi mbalimbali (duniani)
Ina maana gani, linashangaza jambo hilo } *2

1. Siku ile ya Pentekoste ilipofika,
   mitume nao waamini
   Walikusanyika pamoja katika nyumba,
   walimokuwa wamekaa
   
2. Mara uvumi wa upepo ukasikika,
   ndimi za moto zikawashukia,
   Wakawa wamejazwa na Roho Mtakatifu,
   wakisema lugha nyingi
''');
    Song songHolySpirit10 = Song('El espíritu de Dios está en este lugar', '''
El Espíritu de Dios está en este lugar
El Espíritu de Dios se mueve en este lugar
Está aquí para consolar
Está aquí para liberar
Está aquí para guiar, el Espíritu de Dios está aquí...2

Muévete en mí
Muévete en mí
Toca mi mente, mi corazón
Llena mi vida de tu amor
Muévete en mí
Dios Espíritu, muévete en mí...2

El Espíritu de Dios está en este lugar
El Espíritu de Dios se mueve en este lugar
Está aquí para consolar
Está aquí para liberar
Está aquí para guiar, el Espíritu de Dios está aquí..2

Muévete en mí
Muévete en mí
Toca mi mente, mi corazón
Llena mi vida de tu amor
Muévete en mí
Dios Espíritu, muévete en mí

Toca mi mente, mi corazón
Llena mi vida de tu amor
Muévete en mí
Dios Espíritu, muévete en mí
''');
    Song songHolySpirit11 = Song('Veni, Creatór', '''
Veni, Creatór Spiritus,
mentes tuórum visita,
imple supérna grátia
quae tu creásti pectora.

Qui diceris Paráclitus,
donum Dei altissimi,
fons vivus, ignis, cáritas
et spiritális únctio.

Tu septifórmis múnere,
dextrae Dei tu dígitus,
tu rite promissum Patris
sermóne ditans gútura.

Accénde lumen sénsibus,
infúnde amórem córdibus,
infima nostri córporis,
virtúte firmans pérpeti.

Hostem repéllas lóngius
pacémque dones prótinus,
ductóre sic te práevio
vitémus omne nóxium.

Per te sciámus da Patrem
noscámus atque Filium,
te utriúsque Spiritum
credámus omni témpore, Amen.
''');
    Song songHolySpirit12 = Song('Uje Roho Mtakatifu Tuangaze', '''
1.  Uje Roho Mtakatifu, tuangaze toka mbingu
    Roho zetu kwa mwangao

2.  Uje Baba wa maskini, uje mtoa wa vipaji
    Uje mwanga wa mioyo

3.  Ee Mfariji mwema sana, ee rafiki mwanana
    Ewe raha mustarehe

4.  Kwenye kazi u pumziko, kwenye joto, burudiko
    U mfutaji wa machozi

5.  Ewe mwanga wenye heri, uwajaze waamini
    Neema yako mioyoni

6.  Bila nguvu yako wewe, mwanadamu hana kitu
    Kwake yote yana kosa

7.  Osha machafuko yetu, panyeshee pakavu petu
    Na kuponya majeraha

8.  Ulegeze ukaidi, washa moto wa uadili
    Nyoosha upotevu wote

9.  Wape waumini wako, wenye tumaini kwako
    Paji zako zote saba
   
10. Wape tuzo ya fadhila, wape mwisho bila hila
    Wape heri ya milele
   
11. Amina aleluya, amina aleluya,
    Amina aleluya
''');

    Song songWeddingHymns1 = Song('I Love You', '''
1. Siku tuliyoingoja mimi na wewe,
   Kwa uwezo wake mungu leo imefika,
   
   Popote uendapo tutakuwa pamoja
   {Mungu ametuunganisha mimi nawe,
   nasi wawili tena ni mwili mmoja,
   wewe ni wangu kweli
   na mimi ni wako njoo,
   I love you mpenzi wangu
   I need you siku zote I love you) *2
   
2. Kwa maombezi yake mama yetu maria,
   Ahadi yetu sasa kweli imetimia,
3. Chaguo la moyo wangu mimi nakupenda,
   Tulizo la moyo wangu njoo karibu yangu,
4. Nimekuchagua wewe wangu wa maisha,
   Agizo la moyo wangu njo tujitulize,
5. Mpenzi wangu nakupenda nawe unipende,
   Kwa penzi la raha na karaha tupendane,
''');
    Song songWeddingHymns2 = Song('Ondoka Ewe Bibi harusi', '''
Ondoka ewe Bwana harusi, tembea wakuone
Ondoka ewe bibi harusi, tembea kwa maringo
Njoo kwangu nikueleze, neno moja toka moyoni mwangu

{ Nimekuchagua wewe, wewe wangu, wa maisha
Tangu leo, mimi na wewe ni kitu kimoja }*2 

1. Sikiliza nyimbo nzuri nderemo ngoma vinanda
   Haya yote ni kwa ajili yangu, mimi na wewe *2
2. Angalia vazi langu lilivyopambwa vizuri
   Watu wanatushangilia, siku ya leo *2
3. Nimekuja kwako leo, uthibitishe hakika,
   Mimi kweli ninakupenda, wewe ni wangu *2
4. Tumeacha wale wote tumejifunga pamoja
   Mimi na wewe hatutengani, milele yote *2
''');
    Song songWeddingHymns3 = Song('Bwana Awabariki', '''
Bwana awabariki, Bwana awabariki
Bwana awabariki milele
1. Ukimcha Mungu - Bwana awabariki
   Na kutembea -
   Pamoja naye -
   Heri ni yako -
2. Na mke wako -
   Atastawi -
   Kama mzabibu -
   Wenye matunda -
3. Watoto wako -
   Watafanana -
   Na machipuko -
   Ya mzeituni -
4. Ubarikiwe -
   Kutoka Saioni -
   Maishani mwetu -
   Amani kwako -
''');
    Song songWeddingHymns4 = Song('Harusi Kidededede', '''
{ Bwana harusi na bibi harusi, leo mmefunga ndoa ya maisha,
Kaeni kwa amani kidededede } * 2

Upendo wenu umedhihirika
Uyani kwenu bamba ishini tototo
Uzuri wenu hauna kifani
Uyani kwenu bamba ishini tototo
Na nyumba yenu imebarikiwa
Uyani kwenu bamba ishini tototo ooo

1. Jitulize mjisikie sukari, siku ya leo ni yenu,
   Furahini, mmepambwa maua mnapendeza
2. Bwana arusi kwanza wachangamka, bibi arusi chachawa,
   Chezacheza, penzi lenu leo limekamilika
3. Mapenzi yenu yote yatasitawi, hakika yatasitawi,
   Yatamea, kama ule mwerezi wa Lebanoni
4. Baraka zake Mungu ziwashukie, kaeni pasipo shida,
   Siku zote nyumba yenu iwe hekalu la Mungu.
''');

    Song songBibleProcession1 = Song('Maneno Yote', '''
1. Maneno yote ya Injili Mitume
   Tangazeni pote duniani *2

   Haya sasa fungueni masikio *2
   Maneno ya Injili yaenezwe

2. Yesu aliwambia mitume
   Tangazeni pote duniani *2
''');
    Song songBibleProcession2 = Song('Tulitangaze Neno', '''
1. Tumeitwa na Yesu - tulitangaze Neno *2
   Wazee pia na wamama - tulitangaze Neno * 2

   Tulitangaze neno lake, kwa mataifa mbalimbali
   Tulitangaze neno lake, ulimwenguni kote

2. Ni neno la bariki-
   Ni neno pia lafariji

3. Vijana na watoto -
   Wadogo pia na wakubwa

4. Ni neno linakuja-
   Ni neno pia laokoa-

5. Ni neno lake Bwana -
   Ni neno ambalo linaponya -
''');
    Song songBibleProcession3 = Song('Umeniita bwana', '''
UMENIITA BWANA NAITIKA, NIWE MTUMISHI WAKO MILELE x2

1. PENDO LAKO YESU KWANGU LANIVUTIA NIYAACHE YA DUNIA NIKUFUATE, WEWE NDIWE LENGO LETU LA MAISHANI, UMENIITA BWANA UNIPOKEE

2. UMENIITA BWANA NAITIKA, KUFANYA KAZI KATIKA SHAMBA LAKO, UNIONGOZE NIWE MTUMISHI WAKO, NIWE MTUMISHI WAKO MWANI NIFU. 

3. NIMEITIKA WITO NAJITOA KWAKO , UNITOME POPOTE NITAKWENDA HARAKA, UMENIITA, NIYAACHE YA DUNIA UNITIE PENDO LAKO SHAMBANI MWAKO
''');
    Song songBibleProcession4 = Song("Nating'o Muma", '''
{ Ting`o Muma aa ting`o Muma, ting`o Muma nalemo } *2
1. Nating`o muma nalemo,
   Nating`o muma, nalemo, nating`o ang`o
   { Ting`o muma, ting`o muma
   Ting`o muma, nalemo (nating`o ang`o) } *2
2. Naweyo chode nalemo,
   Naweyo chode nalemo naweyo ang`o
   { Weyo chode, weyo chode
   Weyo chode, nalemo (naweyo ang`o) } *2
3. Naweyo kong`o nalemo ...
4. Naweyo magpiny nalemo ...
5. Naweyo njaga nalemo ...
6. Naweyo kwede nalemo ...
7. Naweyo kwalo nalemo ...
8. Naweyo ndawa nalemo ...
''');

    Song songThanksgiving1 = Song('Nomba Baraka', '''
Kama ulivyo wingi wa nyota za Angani,
Ninaomba Bwana uyajaze Baraka maisha yangu,
Neema zinitiririke,
Rehema zinitiririke,
Naomba furaha Yako Bwana,
Naomba Faraja Yako Bwana,
Ninaomba bwana uyajaze
baraka maisha yangu
''');
    Song songThanksgiving2 = Song('Uhai na nguvu', '''
1. Nikulipe nini ewe Mungu Baba wa Mbinguni
   Kwani mtu mimi sina kitu cha kujivunia

   Uhai na nguvu ni zawadi nzuri umenipa wewe Baba.
   Maisha mazuri ni talanta safi nimepata kwako wewe
   Sasa nakuomba baba nigeuze chombo chako
   Nimejitolea kwenda kutangaza neno lako *2

2. Nikufananishe na nini humu ulimwenguni
   Uliumba vyote bahari mito hata milima
3. Ningekuwa ndege hakika ningeruka angani
   Ningekuwa nyota ningemulika dunia yote
4. Nitakutendea nini ili nikufurahishe,
   Nitakuimbia wimbo gani Baba nikusifu
5. Unitume Baba popote nipeleke ujumbe
   Nitalihubiri Jina lako daima milele
''');
    Song songThanksgiving3 = Song('Mataifa ya Ulimwengu', '''
{ Mataifa yote ya ulimwengu
Yatakusujudia ee Mungu (Mungu Baba) } *2

{ Mema uliyonitendea Mungu wangu ninashukuru
Jana leo nimeamka kesho sijui itakuwa vipi
Ninashukuru Mungu wangu leo
Na nyimbo nzuri ninaimba ili kesho nayo niwe salama
Nazo sifa zako, nitangaze pote } *2

1. Uamkapo asubuhi ndugu yangu, umshukuru Mungu
   Kwa jinsi alivyokulinda usiku wenye giza tororo
   Uimbe kwa furaha na kuchezacheza kwa madaha
2. Ufikapo safari yako ndugu yangu, umshukuru Mungu
   Kwa jinsi alivyokulinda na ajali za barabarani
   Uimbe kwa furaha na kuchezacheza kwa madaha
3. Shikaneni mikono sasa yote muinyanyue juu
   Semeni kwa shangwe na mbwebwe maneno haya kwa furaha
   Ameweza Bwana Mungu kweli ameweza ameweza
4. Akina mama simameni sasa mpige vigelegele
   Na kina Baba nyanyukeni mpige makofi ya shangwe
   Muimbe kwa furaha na kuchezacheza kwa madaha
''');
    Song songThanksgiving4 = Song("Tembwe wang'oma", '''
Neshamfumu shapachalo
Walishichila shonsefye
Tembwe wang'oma aah*2
 
Tembwe wang'oma
Yelele yele tembwe tembwe
Tembwe wang'oma twakwawila
Wemwine mulu ne chalo
Tembwe wang'oma aah*2
 
Neshamfumu shamumenshi......
Neshamfumu shamumwela......
Neshamfumu shakukabanga.....
''');
    Song songThanksgiving5 = Song('Nkumsopani fumu', '''
Sap: Amfumu lero
All: Afumu zaninge muniwombole
Munikole woko nakunitaska
Kuti nikafike ku paradizo
Zani minitaske fumu ningataika
 
Nkumsopani fumu ukaristiya
Umo imwe yesu mukujibisa
Kumanyiska ichi mwe nkutondeka
Zani minitaske fumu ningataika
 
Ningamuonani na maso chara
Panji kukhwaskani woko lane
Kweni nkhuzomera na mtima wose
Zani minitaske fumu ningataika
 
Mu ukaristiya mkutikumbuska
Kuti nyifwa yini ya pa mphinjika
Ndiyo ilipilee kwananga kwithu
Zani minitaske fumu ningataika
 
Imwe fumu yesu wakutemwa
Mutisuke m'mzimu wakwangika
Nyifwa yinu yira ya pa mphinjika
Zani minitaske fumu ningataika
''');
    Song songThanksgiving6 = Song('Wakristu wote simameni', '''
1. Wakristu wote simameni, simameni
   Tuchezeni mbele za Bwana, kwa shukrani
   (Leo) Asubuhi na mchana nitamsifu (Bwana)
   Na usiku nitaita jina la Bwana (wangu)
   Sifa zake zi kinywani mwangu daima
   Nitaimba sifa zake Mungu milele
2. Tupeperusheni mikono juu hewani
   Tushangilieni tupigeni makofi
3. Ametulisha kwa chakula cha mbinguni
   Twaburudika kwa kinywaji cha uzima
4. Ametukinga na maovu ya dunia
   Mapenzi yake kwetu sisi ni ya ajabu
5. Turukeruke na tucheze kama ndama
   Tupigeni ngoma kayamba na vinanda
''');
    Song songThanksgiving7 = Song('Mulungu wathu wopatsa', '''
Mulungu wathu wopatsa, 
Chifukwa amatikonda,
Ayenera kumthokoza,
 
Ndi mwa thupi ndi mwa mzimu...
Sitingakhale ndi chinthu....
Chosadzera kwa mulungu...*2
 
Mudalenga tonse ndinu...
Lero otisunga ndinu...
Simudzatimana kanthu...*2
 
Yesu adatiombola...
Adatifera pamtanda...
Tiyenera kumthokoza...*2
 
Yesu tikuthokozani...
Chifukwa chamasakrament...
Ntchito zanu zachisoni...*2
 
Yesu kwanu m`paradizo...
Mudatikonzera malo...
Tikause ndi anjelo...*2
 
Nthawi ya moyo wosatha...
Tidzatama mothokoza...
Mulungu wathu wopatsa...*2
''');
    Song songThanksgiving8 = Song('Mataifa ya Ulimwengu', '''
{ Mataifa yote ya ulimwengu
Yatakusujudia ee Mungu (Mungu Baba) } *2

{ Mema uliyonitendea Mungu wangu ninashukuru
Jana leo nimeamka kesho sijui itakuwa vipi
Ninashukuru Mungu wangu leo
Na nyimbo nzuri ninaimba ili kesho nayo niwe salama
Nazo sifa zako, nitangaze pote } *2

1. Uamkapo asubuhi ndugu yangu, umshukuru Mungu
   Kwa jinsi alivyokulinda usiku wenye giza tororo
   Uimbe kwa furaha na kuchezacheza kwa madaha
2. Ufikapo safari yako ndugu yangu, umshukuru Mungu
   Kwa jinsi alivyokulinda na ajali za barabarani
   Uimbe kwa furaha na kuchezacheza kwa madaha
3. Shikaneni mikono sasa yote muinyanyue juu
   Semeni kwa shangwe na mbwebwe maneno haya kwa furaha
   Ameweza Bwana Mungu kweli ameweza ameweza
4. Akina mama simameni sasa mpige vigelegele
   Na kina Baba nyanyukeni mpige makofi ya shangwe
   Muimbe kwa furaha na kuchezacheza kwa madaha
''');
    Song songThanksgiving9 = Song('Natamani Kuruka', '''
1. Nipishe njia nipeni nafasi
   Nimuonyeshe Mungu nilivyofurahi
   Nitamwimbia ngoma nitacheza
   Nimuonyeshe Mungu nilivyofurahi
   
   Natamani kuruka, nifika kule
   Nimuinue Mungu kwa mikono yangu
   Nimueleze kwa kinywa, changu mwenyewe
   Kwamba nimefurahi kwa upendo wake
   Bwana nashukuru, nashukuru nashukuru tu
   Ninashukuru kwa kunipenda bila mwisho
   Sina cha kusema, cha kusema cha kusema tu
   Ninashukuru kwa kunipenda bila mwisho
   
2. Kaniinua kutoka shimoni -
   Akaniweka juu ya kinara -
   Nitazunguka kwa maringo tele -
   Na tabasamu lisilo kauka -
   
3. Nitawashika wenzangu mikono -
   Tujiinue juu kwa pamoja -
   Wenzangu si mmejionea wenyewe -
   Mungu alivyo mwema wa ajabu -

4. Nitaandika utukufu wake -
   Na wajukuu wangu wausome -
''');
    Song songThanksgiving10 = Song('Mimi Nikushukuruje', '''
[ s ] Mimi nikushukuruje Bwana -
[ w ] Mungu wangu nikushukuruje
[ s ] Kwa mema mengi umenijalia -
[ w ] Mungu wangu nikushukuruje

{ Umenipa uhai napendeza, umenipa nyumba pia watoto,
Nafikiri nikushukuruje Mungu wangu ninasema asante }*2

1. Umenijalia mali, nikutumikie wewe
   Niwagawie maskini, wajane pia yatima
2. Umenipa na akili nitambue mambo yote
   Mabaya niweke kando, mazuri nitumikie.
3. Umenipa na chakula kilichotoka mbinguni
   Chenye kushibisha roho, ili nifike mbinguni.
''');
    Song songThanksgiving11 = Song('Amesgenehalhu', '''
Amesgenehalhu

Kalagegnehut neger
keregn kemillew kumneger
Yarkelgn selebeza 
Amlake lamelkeh metaw keza 
Ke nefse feso befith
Zufaneh yikber mekdeseh
be weste yalew yehe new hulgize amesegenalu

Amesgenehalhu (8)

Be chelema alem gebeche
endalker lijej tefiche
Be eyesus lene dersehal 
hiwoten ke mot tadegehal 
bante kafere kesashe 
zimta sayihon milashe
Be misganaye metahugn
mech ziye akuaretalhugn

Amesgenehalhu (8)

Be hiwot lanoregn tigisteh
Sel zewter tibekah 
Abetu sel weletah 
selemayinger sitotah
Salsas labeza misgana
lela yemileh yelemna 
Amen yedreseh wededgn 
amlake le kibrih sekegn

Amesgenehalhu (8)
''');
    Song songThanksgiving12 = Song('Inu mulungu titama', '''
Inu mulungu titama, wawa mfumu wawa
Inu ndinudi ambuye, wawa mfumu wawa
Inu ndinudi atate, wawa mfumu wawa
Pa nthawi zonse mulipo, wawa mfumu wawa
 
Wawa mfumu wawa*2
Wawa wawa wawa
Wawa mfumu wawa
Zaithwa namalenga
 
Anjero onse kumwamba...
Amaimbira inutu....
Ndinu woyera Mulungu...
Mbuye wankhondo kumwamba...
 
Ulemu wanu ambuye....
Pa dziko pano wadzadza...
Oyera wanu ambuye...
Akutamanda inutu...
 
Mpingo wanu  ambuye...
Ukutamanda inutu...
Ndi mwana wanu mmodzidi...
Ulemu mzimu woyera...
 
Ambuye yesu inunso...
Ndinudi mfumu kumwamb...
Mudatsikadi pansipa...
Kutiombola tonsefe...
 
Mudasauka koposa...
Ndi kutsekula kumwamba
Pa dzanjadi mukhala...
''');

    Song songOffertory1 = Song('Un niño se te acercó', '''
Un niño se te acercó aquella tarde, 
sus cinco panes te dio para ayudarte, 
los dos hicisteis que ya no 
hubiera hambre 
los dos hicisteis que ya no 
hubiera hambre. 

La tierra el aire y el sol son tu regalo y mil estrellas de luz sembró tu mano.
El hombre pone su amor y su trabajo, el hombre pone su amor y su trabajo. 

También yo quiero poner sobre tu mesa, 
mis cinco panes que son una promesa de darte todo mi amor y mi pobreza, de darte todo mi amor y mi pobreza.
''');
    Song songOffertory2 = Song('Utukuzwe', '''
Utukuzwe ewe Baba Mungu utukuzwe. Aleluya
Kwani Yesu mfumfuka ametualika. Aleluya.
R. (Aleluya utukuzwe) utukuzwe
Baba mwumba uli mwengu- aleluya x2
 
Tumepokea mkate mazao ya mashamba....
Ndiyo alama kwetu ya wema wako mkuu...
 
Ni tunda la bidii ya mkono nay a moyo...
Jalio liwe kwetu chakula cha uzima..
 
Zawadi ya divai, kutoka mazabibu....
Ndiyo alama kwetu ya wema wako mkuu...
 
Ni tunda la bidii ya mkono na ya moyo....
Jalio liwe kwetu kinywaji cha roho
''');
    Song songOffertory3 = Song('Das Weizenkorn', '''
Das Weizenkorn muss sterben,
sonst bleibt es ja allein;
der eine lebt vom andern,
für sich kann keiner sein.

Geheimnis des Glaubens:
im Tod ist das Leben.

So gab der Herr sein Leben,
verschenkte sich wie Brot.
Wer dieses Brot genommen,
verkündet seinen Tod.

Als Brot für viele Menschen
hat uns der Herr erwählt;
wir leben füreinander,
und nur die Liebe zählt.
''');
    Song songOffertory4 = Song('Este pan y vino', '''
Este pan y vino, Señor, 
se transformarán
en tu Cuerpo y Sangre, Señor, 
en nuestro manjar.
 
Gracias al sol y al labrador,
en el altar florecen hoy
las espigas, los racimos,
que presentamos a Dios.
 
Lo que sembré con mi dolor,
lo que pedí en mi oración,
hoy son frutos, son ofrendas,
que presentamos a Dios..
''');
    Song songOffertory5 = Song('Tolem robo', '''
Tolem robo tolema, 
kitalakarea ekapolonia,
Tolem robo tolemu.

Ngikanupak tolemutua...
Ngide cicik tolemutua...
Ngakimati tolemutua...
''');
    Song songOffertory6 = Song('Mungu Muumba Twakutolea', '''
1. { Mungu Muumba twakutolea sadaka safi ee Baba pokea } *2

Sadaka, ee Baba pokea *2
Tunakutolea sadaka safi *2
Sadaka, ee Baba pokea *2

2. Mkate huu uwe mfano wa mwili wako ee Baba pokea

3. Divai hii iwe ishara ya damu yako ee Baba pokea

4. Na fedha zetu za mifukoni twakutolea ...

5. Maisha yetu kwa roho safi twakutolea ...

6. Mazao yetu ya mashambani twakutolea ...

7. Matendo yetu mateso yetu twakutolea ...

8. Furaha yetu uchungu wetu twakutolea ...

9. Kwa leo hii twakushukuru kwa wema wako ...
''');
    Song songOffertory7 = Song('Simu nai paun ho tua santu', '''
Simu nai paun ho tua santu nu'udar sakrifisiu kristu laran luak {2x}
SOLO
1. Simu ba hau nai hau nia prezente paun ho tua santu iha hau nia fatin {REEF}
2. Simu ba hau nai hau nia hau nia ksolok susar hau nia moris no mate hau fo ba ita {REEF}
''');
    Song songOffertory8 = Song('Sadaka yangu', '''
Sadaka yangu, kwako ee Mungu
Ni moyo mnyofu na uliopondeka
Tazama wapendezwa na kweli ya moyo
Nawe wanijulisha hekima kwa siri
Nioshe kabisa na uovu wangu wote
Na kinywa changu kitanena sifa zako

1. Maana wewe Bwana hupendezwi
   Na dha-bihu za kuteketezwa
   Ama- sivyo mimi ningalikutolea
   
2. Wapendezwa na dhabihu za haki
   Kuto-ka- kwa moyo mnyofu
   Zitolewazo juu ya madhabahu yako
   
3. Ee Mungu wa wokovu wangu
   Unipe moyo radhi wa utii
   Usiniondolee Roho wako Mtakatifu
''');
    Song songOffertory9 = Song('Twende tumutolee', '''
Twende tutowe sadaka Ndugu zangu
Twende tutowe ee bwana. x2

Ibrahim wakati wakale.
Naye alitowa sadaka. x2 
 
Musa pamoja nawa Israeli 
Nawo walitowa sadaka. x2 

Abeli mwana mpendwa wa Mungu.
Naye alitowa sadaka. x  2
''');
    Song songOffertory10 = Song('Guarda questa offerta', '''
Guarda questa offerta,
guarda a noi Signor,
tutto noi t'offriamo,
per unirci a Te.

Nella tua messa la nostra messa,
Nella Tua vita la nostra vita.

Che possiamo offrir Ti,
Nostro Creator?
Ecco il nostro niente,
peridio Signore.
''');
    Song songOffertory11 = Song('Te conocimos Señor', '''  
Te conocimos Señor al partir el pan, 
Tú nos conoces Señor al partir el pan (x2) 

Andando por el camino te tropezamos Señor, 
te hiciste el  encontradizo, 
nos diste conversación, 
tenían tus palabras fuerza de vida y amor, 
ponían esperanza y fuego en el corazón. 
  
Te conocimos Señor al partir el pan, 
Tu nos conoces Señor al partir el pan (x2) 
  
Llegando a la encrucijada, 
tu proseguías Señor, 
te dimos nuestra posada, 
techo comida y calor, 
Sentados como amigos, 
al compartir el cenar, 
allí te conocimos 
al repartirnos el pan. 
  
Andando por los caminos 
te tropezamos Señor, 
en todos los peregrinos 
que necesitan amor, 
esclavos y oprimidos 
que buscan la libertad; 
hambrientos, desvalidos 
a quienes damos el pan.
''');
    Song songOffertory12 = Song('Nyo alemikini', ''' 
Nyo mono alemuni ayong ainakin akuj papa
Nyo mono alemuni ayong ainakin ekapolon Kang
Alemuni ayong (kiree) ainakin akuj papa (eketiron) alemuni ayong, ainakin ekapolon kang x2
 
1. Ekapolon akij, papa lojok etau iyong, ekapolon akuj, kidia amugati naa, ekapolon akuj papa irimana iyong, papa kiterereng iyong
T/B (kidia iyong, papa ngikosiboro, papa kidia iyong, papa kisubus papa kidia iyong, papa kiterereng iyong)
 
2. EKapolon akuj papa lojoktau iyong, ekapolon akuj, kidia efini lo, ekapolon akuj papa irimana iyong, papa kiterereng iyong
T/B (kidia iyong, papa ngikosiboro, papa kidia iyong, papa kisubus papa kidia iyong, papa kiterereng iyong)
 
3. Ekapolon akuj papa lojok tau iyong, ekapolon akuj kidia ngaraito nu ekapolon akuj, papa irimana iyong papa kiterereng iyong
T/B (kidia iyong, papa ngikosiboro, papa kidia iyong, papa kisubus papa kidia iyong, papa kiterereng iyong)
 
4. Ekapolon akuj papa lojok tau iyong, kidia ngaboolai nu, ekapolon akuj, papa irimana iyong, papa kiterereng iyong
T/B (kidia iyong, papa ngikosiboro, papa kidia iyong, papa kisubus papa kidia iyong, papa kiterereng iyong)

5. Ekapolon akuj, papa lojok tau iyong, ekapolon akuj kidia ngibaren lu, ekapolon akuj, papa irimana iyong, papa kiterereng iyong
T/B (kidia iyong, papa ngikosiboro, papa kidia iyong, papa kisubus papa kidia iyong, papa kiterereng iyong)
''');
    Song songOffertory13 = Song('Njoni watu wote', '''
Njoni watu wote tutoe (x2)

Njoni, tutoe sadaka (x2)

Kila mtu aanze kutoa (x2)

Toa sehemuyo ya kumi (x2)

Nafsi yako nzima tolea (x2)

Asante yako urudishe (x2)
''');
    Song songOffertory14 = Song('Una espiga', '''
Una espiga dorada por el sol,
el racimo que corta el viñador,
se convierten ahora en pan y vino de amor,
en el Cuerpo y la Sangre del Señor. (x2)
 
Compartimos la misma comunión,
somos trigo del mismo sembrador,
un molino, la vida, nos tritura con dolor;
Dios nos hace Eucaristía en el amor. (x2)
 
Como granos que han hecho 
el mismo pan,
como notas que tejen un cantar,
como gotas de agua que se funden 
en el mar,
los cristianos un cuerpo formarán. (x2)
 
En la mesa de Dios se sentarán,
como hijos su pan comulgarán,
una misma esperanza, 
caminando cantarán,
en la vida como hermanos se amarán. (x2)
''');
    Song songOffertory15 = Song('Kum ba yah', '''
Kum ba yah, my Lord kum ba yah! (x3)

O Lord , kum ba yah.

Take these gifts, Lord, kum ba yah! (x3)

We bring bread, Lord, kum ba yah! (x3)

We bring wine, Lord, kum ba yah! (x3)

Bless our actions, Lord kum ba yah! (x3)
''');
    Song songOffertory16 = Song('Alfajiri ya kupendeza', '''
Alfajiri ya kupendeza, ni siku njema siku yenye baraka,
[ w ] Jua limekwishachomoza, laamsha wote waliolala

Ndege nao wanalialia kumshukuru Muumba ( njooni )
{ Njooni baba, mama na watoto
Njoni wote mbele za Bwana
Tumtolee shukrani zetu, kwa kutoa sadaka } *2

1. [ s ] Ndege wanamshukuru, kwa sauti za kupendeza
   Na sisi tumshukuru, kwa zawadi alizotupa (njooni)
   
2. Wanyama pia na mimea, vyote vimeumbwa na Mungu
   Vitu vyote vya duniani, vyapaswa kumshukuru Mungu (njooni)
   
3. Kaiumba dunia hii, kaweka giza pia mwanga
   Mchana tufanyeni kazi, usiku na tupumzike (njooni)
''');
    Song songOffertory17 = Song('Tumtolee Sadaka', '''
Tumtolee Sadaka, Tutoe Kwa Upendo
Tumtolee Sadaka, Mungu Baba Atabariki

1. Wazee Wakitoa, Vijana Wakitoa, Watoto Wakitoa, Mungu Baba Atabariki
2. Wababa Wakitoa, Wamama Wakitoa, Sisi Sote Tukitoa, Mungu Baba Atabariki
3. Mavuno Tukitoa, Mifugo Wakitoa, Na Fedha Tukitoa, Mungu Baba Atabariki
''');
    Song songOffertory18 = Song('Nikupe Nini Mungu Wangu', '''
{ Nikupe nini Mungu wangu
Nikupe nini Mungu wangu cha kukupendeza } *2

{ Cha kukupendeza, cha kukupendeza
Cha kukupendeza, cha kupendeza, siku hii ya leo } *2

1. Ninacho kidogo, cha kukupendeza, ewe Mungu wangu
   Nilichoandaa siku hii ya leo, ndicho hiki Bwana
2. Sadaka ya leo, ni sadaka safi, isiyo na doa
   Twakuomba Bwana twakuomba Bwana upendezwe nayo
3. Twatoa mkate, twatoa divai, upendezwe nayo
   Fedha nazo Bwana, tunakutolea, upokee Bwana
''');
    Song songOffertory19 = Song('Utukuzwe', '''
Utukuzwe ewe Baba Mungu utukuzwe. Aleluya
Kwani Yesu mfumfuka ametualika. Aleluya.

R. (Aleluya utukuzwe) utukuzwe
Baba mwumba uli mwengu- aleluya x2
 
Tumepokea mkate mazao ya mashamba....
Ndiyo alama kwetu ya wema wako mkuu...
 
Ni tunda la bidii ya mkono nay a moyo...
Jalio liwe kwetu chakula cha uzima..
 
Zawadi ya divai, kutoka mazabibu....
Ndiyo alama kwetu ya wema wako mkuu...
 
Ni tunda la bidii ya mkono na ya moyo....
Jalio liwe kwetu kinywaji cha roho
''');
    Song songOffertory20 = Song('Mbingu na nchi zinyamaze', '''
Mbingu na nchi zinyamaze,
bwana youmo hekaluni,
ameshaanza kazi ya kupepela,
watu wenzangu jioji.

Usichelewe muda si wako,
ujiunge na kundi la Yesu,
atakupa uwezo wa kushinda,
vitani ufike mbinguni.

Hivi karibuni bwana Yesu,
atakuja kwa upanga
itakuwa ni mchujo,
mbegu nzuri ghalani,
magugu motoni.
''');
    Song songOffertory21 = Song('Ofrenda de amor', '''
Por los niños que empiezan la vida,
por los hombres sin techo ni hogar.
Por los pueblos que sufren la guerra,
te ofrecemos el vino y el pan.
 
Pan y vino sobre el altar,
son ofrendas de amor,
pan y vino serán después,
tu Cuerpo y Sangre Señor.
 
Por los hombres que viven unidos,
por los hombres que buscan la paz,
por los pueblos que no te conocen,
te ofrecemos el vino y el pan.
 
Por aquellos a quienes queremos,
por nosotros y nuestra amistad,
por los vivos y por los difuntos,
te ofrecemos el vino y el pan.
''');
    Song songOffertory22 = Song('Unless a grain of wheat fall', '''
Unless a grain of wheat fall to the ground and die, 
it remains a single grain.
But if it die it will yield a rich harvest. 

In his own body, 
by his own wounds,
he brought your sins to the cross,
and suffer'd for you; 
pour'd out his life blood upon the tree,
pour'd out his life - blood for you and me.

Do not draw back now, do not be shy.
Turn not away from him who paid the price. 
Come to his table, sit by his side.
There he awaits you: the Lord of Life.
''');
    Song songOffertory23 = Song('Lord, accept the gift we offer', '''
Lord, accept the gift we offer 
at this eucharistic feast,
bread and wine to be, 
transformed now through 
the action of the priest.
Take us, too, Lord 
and transform us,
thy grace in us increased.

May our souls be pure and spotless, 
as this host of wheat so fine;
may all stain of sin be crushed out,
Like the grape that forms the wine,
as we too become partakers, 
in this sacrifice divine.

Take our gift, almighty Father,
Living God, eternal, true, 
which we give,
through Christ our savior, 
pleading here for us a new.
Grant salvation to all present, 
and our faith and love renew.
''');
    Song songOffertory24 = Song('Brot und Wein', '''
Herr, wir bringen in Brot und Wein
unsere Welt zu dir.
Du schenkst uns deine Gegenwart
im österlichen Mahl.
''');
    Song songOffertory25 = Song('Esto que te doy', '''
Esto que te doy es vino y pan Señor,
esto que te doy es mi trabajo,
es mi corazón, mi alma,
es mi cuerpo y mi razón,
el esfuerzo de mi caminar...

Esto que te doy mi vida es Señor,
es mi amor también es mi dolor,
es la ilusión, mis sueños, es mi gozo,
y mi llorar es mi canto y mi oración.

Toma mi vida ponla en tu corazón,
dame tu mano y llévame,
cambia mi pan en tu carne,
y mi vino en tu sangre,
y a mi Señor renuévame, límpiame y sálvame.

Esto que te doy no solo Señor,
esta voz también es mi hermano,
es la unión, la paz, el orden,
la armonía y felicidad,
es un canto en comunidad.
''');
    Song songOffertory26 = Song('Sadaka-Ngadekon', '''
Aina akisia ye a (x2)
Ainakisia apayoko,

Ngadekon nayok nu...
Ngakinei nayok nu...
Ngaropiyae nayok nu...
''');
    Song songOffertory27 = Song('Thanksgiving and love', '''
O Yes in the presence of the Lord, I will bring my gifts
In thanksgiving and love
There is joy in my heart. It is flowing like a river
I will praise the Lord,
In thanksgiving and love
God our Father, Everlasting King
Please accept this gift we offer
In thanksgiving and love
Take our bread upon Your Altar
And our wine in the chalice
In thanksgiving and love
O Yes in the presence of the Lord, I will bring my gifts
In thanksgiving and love
There is joy in my heart. It is flowing like a river
I will praise the Lord
In thanksgiving and love
With thankful hearts and joyful songs
We approach Your Holy Altar
In thanksgiving and love
Bearing gifts of Your Creation
We return what you have given
In thanksgiving and love
O Yes in the presence of the Lord, I will bring my gifts
In thanksgiving and love
There is joy in my heart. It is flowing like a river
I will praise the Lord
In thanksgiving and love
''');
    Song songOffertory28 = Song('Wherever He leads', '''
Take up thy cross and follow me,
I heard my Master says,
I gave my life to ransom thee
surrender your all today

Wherever He leads I'll go,
wherever he leads I'll go
I'll follow my Christ who love me,
so, wherever He leads I'll go. 

He drew me closer to His side,
I sought His will to know
and in that will I now abide,
wherever he leads I'll go.

It may be through the shadows dim,
or over the stormy sea,
I take my cross and follow Him,
wherever He lead me.

My heart my life my all I bring,
to Christ who loves me so,
He is my master, Lord and King,
Wherever He leads I'll go.
''');
    Song songOffertory29 = Song('Saber que vendrás', '''
En este mundo que Cristo nos da, hacemos la ofrenda del pan,
el pan de nuestro trabajo sin fin,
el vino de nuestro cantar.
Traigo ante Ti, nuestra justa inquietud,
amar la justicia y la paz.

Saber que vendrás,
saber que estarás,
partiendo a los hombres tu pan (x2)

La fe de todos los hombres sin luz, 
la pena y el triste llorar,
el odio de los que mueren sin fe
cansados de tanto luchar.
En la patena de nuestra oblación
acepta la vida Señor.
''');
    Song songOffertory30 = Song('In bread we bring', '''
In bread we bring you,
Lord our bodies labour.
in wine we offer you,
our spirit's grief.
We do not ask you
Lord who is my neighbour?
But stand united now,
one in belief.

Lord we have gladly heard,
Your word, your holy word,
and now in answer 
Lord our gift we bring,
our selfish hearts make true,
our failing faith renew,
our lives belong to you,
our Lord and king.

The bread we offer you 
is blesses and broken?
And it comes for us, 
our sprit's food.
Over the cup we bring your word is spoken,
make  it your gift to us,
your healing blood.

Take all that daily toil plants in our hearts,
poor soil take all we start and spoil,
each hopeful dream,
the chances we have missed,
the graces we resist,
Lord in thy Eucharist,
take and redeem.
''');
    Song songOffertory31 = Song('Let us break bread', '''
Let us break bread together on our knees (x2)
When I fall on my knees,
with my face to the rising sun,
o Lord have mercy on me.
 
Let us drink wine together on our knees (x2)
 
Let us praise God together on our knees (x2)
''');
    Song songOffertory32 = Song('Tolem Apa Tolem', '''
Tolem Apa Tolem, Tolem Ito Tolem, Tolemutu Ngadekon Kus Dang Ainakisi Akuj Apayok

Ainakinet Tolem, Nginae Emunoi Tolem x2

1. Iyong Ekanupan Tungou Tolem, Tolem Anupit Kon, Tolem (Tolem X4) Ainakisi Akuj Yok x2
2. Tolem Ajulot Ngina Nadwarat, Tolem Ngidekot Inuca Akuj (Tolem X4) Ainakisi Akuj Yok x2
3. Tojala Ebari Inu Akuj Kon  Longeri A Melkisedeki (Tolemx4) Ainakisi Akuj Yok x2
''');
    Song songOffertory33 = Song('What return to Yahweh can I make', '''
1. What return to Yahweh can I make,
   What return to Yahweh can I make,
   For blessings of every kind from him that I have received.

Solo:  What to return to Yahweh? *2
All:	What to return can I make? *2
Solo:  What return to Yahweh?

All:	For blessings of every kind from him that I have received.

2. He created me the Lord,
   He adopted me, the Lord,
   For blessings of every kind from him that I have received.
3. He purifies me, strengthens me,
   By the spirit, the spirit's power
   For blessings of every kind from him that I have received.
''');
    Song songOffertory34 = Song('Atate amphamvu zonse', '''
Atate amphamvu zonse,
Landirani mphatso zathu.
Zikasanduketu nsembe,
Yoyenera dzina lanu.
 
Mbuye Yesu, tifanane,
Ndi inu ndi Amai anu,
Kuti ifenso tikhale,
Nsembe ya Atate athu.
Idzani, Mzimu Woyera,
Yeretsani buledi, vinyo. 
Ziyenere kusanduka,
Nsembe yachipulumutso.
Mbuye Yesu, tikufuna,
Kukumbuka moyo wanu,
Imfa yanu ya pamtanda,
Ndiponso kuuka kwanu.
''');
    Song songOffertory35 = Song('Baba Tunaleta Vipaji', '''
1. Baba tunaleta vipaji twakuomba sana pokea
   Twaja kukushukuru kwa yote ulotujalia wanao
   
   Baba tunaleta twakuomba sana pokea
   Baba tunasema, asante, asante
   Kutupa uzima, asante, asante
   Kwa kutukomboa, asante, asante
   Kutuweka huru, asante, asante

2. Mkate na divai twaleta twakuomba sana pokea
   Ndiyo kazi yetu wanao twakuomba sana pokea
3. Mazao ya mashamba twaleta twakuomba sana pokea
   Hata ni kidogo twaleta twakuomba sana pokea
4. Nazo fedha zetu twaleta twakuomba sana pokea
   Utupe baraka twaleta twakuomba sana pokea
''');
    Song songOffertory36 = Song('Sala Yangu Ipae', '''
Sala yangu ipae mbele yako Bwana * 2

{ Kama moshi wa ubani altareni,
Na kuinuliwa kwa mikono yangu
Iwe kama sadaka, sadaka ya jioni } * 2

1. Ee Bwana tunakutolea sadaka yetu,
   Pamoja na maisha ya kila siku.
2. Uwe radhi kuipokea sadaka yetu,
   Kama zile za mababu wa zamani.
3. Hivyo sadaka ifane mbele zako Bwana,
   Na iwe sadaka ya shukrani kubwa.
4. Nasi utubariki maisha yetu yote,
   Na mwisho utujalie heri yako.
''');
    Song songOffertory37 = Song('What shall I offer to the Lord', '''
Sap. What shall I offer to the Lord to make Him happy?
What shall I offer to the Lord to please Him.
Al&ten. What shall I offer to the Lord, oh tell me,
Offer to the Lord, to please Him
Bass. What shall I offer to the Lord, offer to the Lord, offer to the Lord, to please Him.
I may give Him the best of my clothes, he may not take it
I may give Him the best of my shoes, he may not take it x2
S/A      A loving heart, A patient heart, A humble heart, A caring heart
T /B     He will love...x4
I may give Him the gift of a ram 
I may give Him the gift of a cow...x2
I may give Him the gift of a house
I may give Him the gift of a...x2
''');
    Song songOffertory38 = Song('Malaika wa Bwana', '''
Malaika wa Bwana, uchukue sadaka,
upeleke mbele ya uso wa Mungu x 2

1. Ni mazao ya nchi yetu, 
   na kazi yetu wanadamu Malaika
   
2. Mkate mazao ya shamba, 
   divai tunda la mzabibu Malaika
   
3. Ufikishe sadaka hii, 
   karibu na kiti cha enzi Malaika
   
4. Sadaka yetu ifanyike, 
   mbele ya uso wa Muumba Malaika
''');
    Song songOffertory39 = Song('Zawadi Tosha', '''
Nimetunikiwa tuzo lenye thamani nimeletewa zawadi  toka bingun nimejishindia bwanawa mungu nimepewa Yesu zawadi tosha x2
 
Ninashangilia. Naimba kwa furaha ninarukaruka nacheza cheza  naimba kwa furaha napiga makofi na
Avigelegele nimepata Yesu tuzo la  ajabu   
 
Nikiona yesu magonjwa yanapona
Nikiona yesu matata yanakwisha  yesu  kiongozi yesu jemedhari  yesu mchungaji yesumambo yote
 
Maisha marefu ni tuzo nimetuzwa kuishi milele
Nimeshaudiwa binguni kwa baba nitakaribishwa
Nitaishi nae siku zangu zote .
''');
    Song songOffertory40 = Song('Twende Tutoe Sadaka', '''
[ v ] Twende tutoe sadaka -
[ w ] Twende tutoe, Twende tutoe
Sadaka zetu kwa Mungu wetu
{Twende tutoe (jamani) twende tutoe (sote)
Twende tutoe sadaka kwa Mungu wetu } *2
1. Ametulinda kwa wiki nzima
   Hivyo ni vyema kumtolea sadaka yako
2. Toa mali yako yeye kakupa
   Hivyo ni vyema kuitoa kama sadaka
3. Uzee wako yeye kakupa
   Hivyo mzazi ujitolee kumtumikia
4. Ujana wako anaulinda
   Hivyo kijana ujitolee kumtumikia
''');
    Song songOffertory41 = Song('I will offer to my Lord', '''
Bass: I will offer to my Lord
I will offer to my Lord, his king, the gives of my life, I will offer all to him. 
The gift of bread I will offer to my Lord, I will offer all to him...x2
The gift of wine...x2
The gift of peace...x2
The gift of life..x2
''');
    Song songOffertory42 = Song('Take our bread', '''
Take our bread, we ask you,
take our hearts, we love you,
take our lives, o Father,
we are yours, we are yours.
 
Yours as we stand at the table you set,
yours as we eat the bread our hearts can't forget,
we are the sign of your life with us yet,
we are yours, we are yours.
 
Your holy people stand washed in your blood,
spirit-filled yet hungry we await your food.
Poor though we are, we have brought ourselves to you,
we are yours, we are yours.
''');
    Song songOffertory43 = Song('Bring to this table', '''
Bring to this table bread and wine,
Signs of redemption which Christ made divine.
Soon gifts once humble shall become 
God's pledge of salvation, through Jesus his Son. 

Raise up your heart to our Lord present here,
Give him the gift of your love.
Join in this feast which unites man with life,
And live with his peace in your heart.

Join to these off'rings, joys and cares,
Be one with each other and all burdens share.
Banish all hatred, forgive ev'ry wrong;
In Christ we are brothers, at peace we belong. 

Soon in our presence Christ will come
To lend us the courage which his vict'ry won.
Let hope enfold you, trust in his care;
Prepare to receive him whose work we must share.
''');
    Song songOffertory44 = Song('Thou my everlasting portion', '''
Thou my everlasting portion, 
more than friend or life to me, 
all along my pilgrim journey, Saviour, let me walk with Thee, Close to Thee, close to Thee, 
close to Thee, close to Thee,
all along my,pilgrim journey, Saviour, let me walk with Thee.

Not for ease or worldly pleasure, nor for fame my prayer shall be, gladly will I toil and suffer, 
only let me walk with thee. 
Close to Thee, close to Thee, 
close to Thee, close to Thee; 
gladly will I toil and suffer, 
only let me walk with Thee.

Lead me thró the valley of shadows, 
bear me o'er life's fitful sea;
then then gate of life eternal may I enter,
Lord, with Thee. close to Thee, close to Thee, close to Thee, 
close to Thee; then the gate of life eternal.
May I enter, Lord, with Thee.
''');
    Song songOffertory45 = Song('Biino bbata', '''
Biino bbata bakadima Yesu tesoloba 
Kosala namawa*2
Maloba naye Yesu kamata
Kamatambeta telema
Tombola naye
Biino bba maama nbakadima Yesu tesoloba
Kosala namawa*2
Biino nzawule......
Biino bakristo......
''');
    Song songOffertory46 = Song('Te presentamos el vino y el pan', '''
Te presentamos el vino y el pan,
bendito seas por siempre Señor.
 
Bendito seas, Señor,
por este pan que nos diste,
fruto de la tierra
y del trabajo de los hombres.
 
Bendito seas, Señor,
el vino Tú nos lo diste,
fruto de la tierra
y del trabajo de los hombres.
''');
    Song songOffertory47 = Song('Beba Mikononi', '''
1. Tusimame ndugu twende kwake Bwana (kweli)
   Usisite ndugu amka twende hima

Beba mikononi (mwako) uliyojaliwa
Peleka kwa Bwana, upate Baraka

2. Peleka kwa moyo, moyo wa mapendo (kweli) 
   Peleka kwa Bwana uliyojaliwa

3. Sadaka ya fedha, fedha za mifuko (ndugu)
   Amka upeleke mezani kwa Bwana

4. Mavuno mifugo, ni mali ya Bwana (kweli)
   Tupeleke kwake atazipokea

5. Mkate divai tupeleke kwake (leo) 
   Tupate baraka mbele zake Bwana

6. Twende ndugu twende, mbele zake Bwana (twende)
   Tupeleke nafsi zetu kwake Bwana
''');
    Song songOffertory48 = Song('Kidia apa', '''
Kidia apa eviini lo
Kidia apa amungati na 
Kidia apa ngadekon un
Kidia apa akilip na  x2
 
Ainakisi apa ngiboro
Ainakisi apa nakasuban ngiboro daang x2
''');
    Song songOffertory49 = Song('Tutoe sadaka', '''
Tutoe sadaka,
kwa Mungu Baba aliyeumba ulimwengu mzima
Tukumbuke kwamba,
ndiye aliyetupa uzima tutoe sadaka *2
1. Tutoe kwa moyo mwema tukampe Bwana
   Na kwa ukarimu mwema tutoe kwa moyo
2. Nazo fedha zako nenda ukampe Bwana
   Ndugu usisite nenda ukampe Bwana
3. Chochote ulicho nacho ndugu ukatoe
   Yeye ni Muumba wetu ndugu ukatoe
''');
    Song songOffertory50 = Song('All that I am', '''
All that I am, all that I do,
all that I'll ever have, 
I offer now to you.
Take and sanctify these gifts 
for your honour, Lord,
knowing that to love 
and serve you is enough reward.

All that I am, all that I do, 
all that I'll ever have, 
I offer now to You.

All that I dream, all that I pray,
all that I'll ever make, 
I give to you today.
Take and sanctify these gifts for your honour Lord,
knowing that to love 
and serve you is enough reward.
''');
    Song songOffertory51 = Song('Nitakwenda Mimi Mwenyewe', '''
Nitakwenda mimi mwenyewe, nikatoe sadaka kwa Bwana
{ Aliyeniumba mimi, aliyeniumba mimi, aliyeniumba mimi
Mungu wangu, Mungu wangu, Mungu wangu
Kwa kuniumba hadi nikapendeza } *2

1. Kaniumba kwa mfano wake, kuliko viumbe vingine
   Na sasa nikatoe shukrani

2. Vyote nilivyo navyo ni vyake, nimrudishie kwa mapendo,
   Na sasa nikatoe shukrani

3. Mema mengi amenijalia, ya mbinguni na duniani
   Na sasa nikatoe shukrani

4. (Siku zote wanilinda vyema, wanitunza na kunijali
   Na sasa nikatoe shukrani)
''');

    Song songLentHolyWeekEaster1 = Song('Hoy perdóname', '''
Hoy perdóname, hoy por siempre,
sin mirar la mentira,
lo vacío de nuestras vidas,
nuestra falta de amor
y caridad.
 
Hoy perdóname, hoy por siempre,
aún sabiendo que he caído,
que de Ti siempre había huido,
hoy regreso arrepentido,

¡Vuelvo a Ti! (x2)
¡Vuelvo a Ti! (x2)
''');
    Song songLentHolyWeekEaster2 = Song('Umekosa Nini Yesu', '''
1.  Tuifuate Njia ya Msalaba, tuifuate mpaka Kalvari
    Tusimamapo bila haya, (msalaba *2) huponya roho

    * * * * * *
2.  Umekosa Nini we Yesu, kushtakiwa bure kwa Pilato
    Wenye kustahili hukumu, si wewe, si wewe, Bwana ni sisi
3.  Ole msalaba huo mzito, apagazwa Mwana Mpenzi wa Mungu
    Mwili waenea mateso, alipa, alipa madhambi yetu
4.  Ona Mumba Mbingu na nchi, yupo chini mzigo wamwelemea
    Na mtu kiumbe chake kwa ukali, ampiga, ampiga bila huruma
5.  Huko njiani we Maria, waonaje hali ya mwanao
    Ni damu tupu na vidonda, machozi, machozi yamfumba macho
6.  Kwa Simoni heri ya kweli, mimi pia Yesu nisaidie
    Kuchukua mzigo wa ukombozi, kuteswa, kuteswa pamoja nawe
7.  Uso wa Yesu malaika, Bethlehemu wakuabudu
    Bahati yake Veronika, kupangusa, kupangusa mfalme wa mbingu
8.  Wakimvuta huku na huku, wauaji wakamchokesha bure
    Chini wamtupa bado kwa nguvu, aibu, aibu yao milele
9.  Wanawake wa Israeli, msilie kwa sababu hiyo
    Muwalilie hao kwa dhambi, upanga, upanga ni juu yao
10. Mwokozi sasa ni ya tatu, kuanguka chini ya msalaba
    Katika dhambi za ulegevu, nijue, nijue kutubu hima
11. Muje malaika wa Mbingu, funikeni mwiliwe kwa huruma
    Vidonda vyake na utupu, askari, askari wamvulia
12. Hapo mkristu ushike moyo, Bwana wako alazwa msalabani
    Mara miguu na mikono, yafungwa, yafungwa kwa misumari
13. Yesu mpenzi nakuabudu, msalabani unapohangaika
    Nchi yatetemeka kwa hofu, na jua, na jua linafifia
14. Mama Maria mtakatifu, upokee maiti ya mwanao
    Tumemwua kwa dhambi zetu, twatubu, twatubu kwake na kwako
15. Pamoja naye kaburini, zika dhambi na ubaya wa moyo
    Yesu tuwe wakristu wa kweli, twakupa, twakupa sasa mapendo

    * * * * * * * * *
16. Katika roho yangu Bwana, chora mateso niliyokutesa
    Nisiyasahau madeni, na kazi, na kazi ya kuokoa
''');
    Song songLentHolyWeekEaster3 = Song('Amin Amin Nawaambia', '''
1. Amin, amin, nawaambia, ninawaambia
   Amin, amin, mmoja wenu, atanisaliti
   {Nitampiga mchungaji wa kondoo oo
   Na kondoo wa kundi lake watatawanyika}*2
   
2. Mwana wa Adamu aenda zake, ilivyoandikwa
   Ole ni wake mtu yule, amsalitiye
   {Ole wangu, ole wako, umsalitiye Bwana
   Ingekuwa heri kwetu tusingelizaliwa} *2
   
3. Twaeni mle mwili wangu, uwe ukumbusho
   Twaeni mnywe damu yangu, iwe ukumbusho
   {Nitampiga mchungaji wa kondoo oo
   Na kondoo wa kundi lake watatawanyika}*2
   
4. Amini, amini na kutubu, enyi mataifa
   Amini, amini na kutubu, turudi kwa Bwana
   {Ole wangu, ole wako, umsalitiye Bwana
   Ingekuwa heri kwetu tusingelizaliwa}*2
''');
    Song songLentHolyWeekEaster4 = Song('Yesu Kanikuta Jangwani', '''
1. Yesu kanikuta jangwani, akaniambia, nenda huko Yerusaleme
   Yesu kanikuta gizani, akasema, kimbilia Yerusaleme
   Mimi ni kipofu ni mauti (mimi ni mauti)
   Mimi ni kipofu sioni (mimi sioni)
   { Kulikuwa giza, kukapambazuka
   Nikamwona Bwana Bwana wangu } *2
   
2. Natamani mji ule, Yerusaleme kuna nuru kuna raha
   Dhambi zangu matendo yangu, ni maovu, tazameni msalabani
   Upindo wa nguo (nguo yako safi)
   Upindo wa nguo (nguo yako nzuri)
   { Uniguse moyo, moyoni mwangu
   Nitaimba sifa sifa zako } *2
   
3. Watakatifu wa moyo, tumsifuni, Bwana mwenye nchi na mbingu
   Twende huko nchi ya mbali, ya Kanaani ndiko tutaishi milele
   { Fimbo yake Musa ilituokoa
   Fimbo yake Musa, ilituongoza
   { Nchi ile ya Misri (nchi ya farao)
   Tulimwona Bwana mwenye enzi } }*2 
''');
    Song songLentHolyWeekEaster5 = Song('He is Lord', '''
He is Lord; He is Lord.
He is risen from the dead
and He is Lord,
every knee shall bow,
every tongue confess,
that Jesus Christ is Lord.
''');
    Song songLentHolyWeekEaster6 = Song('Una vez más', '''
Una vez más rezaré, 
de rodillas me pondré.
De seguro una vez más, 
Él me perdone.

Le diré que lucho en vano, 
que pequé.
Pues soy humano,
de seguro una vez más, 
Él me perdone.

{Para un Dios que conoció la tentación,
Del amigo la traición, yo no dudo 
me perdone Dios amigo } x2

Yo vi sufrir a mi hermano,
y no le tendí la mano.
De seguro una vez más ,
Él me perdone.

Murió pobre y desahuciado,
yo con los brazos cruzados,
de seguro una vez más,
Él me perdone.
''');
    Song songLentHolyWeekEaster7 = Song('Ten piedad de mi', '''
Ten piedad de mi, 
oh Señor, 
ten piedad,
ten piedad de mi.

Y de mi Cristo apiádate,
contra ti yo pequé (x2)
''');
    Song songLentHolyWeekEaster8 = Song('El Señor resucitó', '''
Hoy el Señor resucitó 
y de la muerte nos libró. 

Alegría y paz, hermano
que el Señor resucitó. 

Porque esperó, Dios le libró 
y de la muerte nos sacó. 

El pueblo en él vida encontró, 
la esclavitud ya terminó. 

La luz de Dios en Él brilló, 
la Nueva vida nos llenó.

Con gozo alzad el rostro a Dios, que de Él nos llega la salvación. 

Todos cantad: ¡Aleluya! 
todos gritad: ¡Aleluya! 
''');
    Song songLentHolyWeekEaster9 = Song('Hii ni Karamu ', '''
Hii ni karamu, uzima wa roho,
Yumo Bwana Yesu, kwa mwili wake, kweli na damu yake

1. Alisema Bwana twaeni wote, mle ni mwili wangu
2. Alisema Bwana twaeni wote, mnywe ni damu yangu
3. Nasi twasadiki ni mwili wake, kweli na damu yake
4. Alituamuru kufanya hivyo, kwa ukumbusho wake
5. Tukifanya hivyo tunatangaza, kifo cha Bwana Yesu
6. Kwa hii karamu, Twashiriki uzima wa Bwana wetu
7. Huu ni upendo aliotuachia, mkombozi wetu
8. Hapa duniani twaishi na Baba, kwa karamu hii
9. Na huko mbinguni tutaishi, na Baba milele yote
''');
    Song songLentHolyWeekEaster10 = Song('Jesús resucita hoy', '''
Mirad Jesús resucita hoy,
mirad la tumba está vacía,
El Padre ha pensado en Él
de los hombres es Señor
de la vida, Salvador
mirad, Jesús resucita hoy
mirad, vive a nuestro lado
la muerte no tiene poder
proclamad por la fe que está vivo y somos libres porque…

{Él resucita hoy,
Él vive entre nosotros 
es Cristo, es Señor,
Aleluya, Aleluya. } x2

Mirad Jesús resucita hoy,
nos da la paz con su palabra
El gozo vuelve al corazón
con su espíritu de amor
nuestra vida cambiará
mirad, Jesús resucita hoy
su amor no nos dejará
Él será guía y luz,
esperanza y fortaleza, porque…
''');
    Song songLentHolyWeekEaster11 = Song('Ten piedad', '''
Ten piedad, Señor, ten piedad,
soy pecador, ten piedad (x2)
Y de mi, Cristo apiádate,
contra ti yo pequé (x2)
Ten piedad, Señor, ten piedad,
soy pecador, ten piedad.
''');
    Song songLentHolyWeekEaster12 = Song('Njooni Wapenzi (Easter)', '''
1. Njooni wapenzi tufanye shangwe
   Mwokozi Bwana amefufuka
   Viumbe vyote tufanye shangwe
   Mwokozi Bwana amefufuka
   Na tufanye shangwe, tuimbe aleluya
   Mwokozi Bwana amefufuka
2. Leo mapema amefufuka -
   Kaburi lake ameliacha -
3. Walinzi wake walishtuka -
   Wakawa kama wamezimia -
4. Kwa ufufuko wako ee Bwana -
   Umeturudishia uzima -
5. Umewashinda adui zetu -
   Mauti kali pia shetani -
6. Enzi ni yako ya umilele -
   Shukrani sifa na utukufu -
7. Hii ndiyo siku iliyofanywa -
   Na Mungu nayo ni ya furaha -
''');
    Song songLentHolyWeekEaster13 = Song('Le tue mani', '''
Le tue mani son piene di fiori,
dove li portavi, fratello mio?
Li portavo alla tomba di Cristo,
ma l'ho trovata vuota, fratello mio!

Alleluia! Alleluia!
Alleluia! Alleluia

I tuoi occhi riflettono gioia,
dimmi cosa hai visto, fratello mio?
Ho veduto morire la morte,
ecco cosa ho visto fratello mio!

Hai portato una mano all'orecchio,
dimmi cosa ascolti, fratello mio?
Sento squilli di trombe lontane,
sento cori d'angeli, fratello mio!

Stai cantando un'allegata canzone,
dimmi perche canti fratello mio?
Perche so che la vita non muore,
ecco perche canto fratello mio!
''');
    Song songLentHolyWeekEaster14 = Song('Pange lingua', '''
Pange lingua gloriosi Corporis mysterium,
sanguinisque pretiosi, quem in mundi pretium
fructus ventris generosi Rex effedit gentium

Nobis datus, nobis natus, ex intacta Virgine
Et in mundo conversatus, sparso verbi semine,
sui moras incolatus miro clausit ordine.

In supremace nocte coenae recumbens cum fratribus
observata lege plene cibisi in legalibus, cibum turbae duodenae sedat suis manibus.

Verbum caro, panem verum verbo carnem efficit:
fitque sanguis Christi merum, Et si sensus déficit
ad firmandum cor sincerum sola fides sufficit.
''');
    Song songLentHolyWeekEaster15 = Song('Somos testigos', '''
El Señor resucitó
venciendo la muerte en la cruz,
nuestra esperanza está en Él,
Él es nuestro Salvador.

Atrás quedó el temor,
la duda y la poca fe,
hagamos ya realidad
un Reino nuevo de amor.

Somos testigos de la resurrección,
Él está aquí, está presente
es vida y es verdad
somos testigos de la resurrección
Él está aquí, su Espíritu
nos mueve para amar.

Tú nos reúnes, Señor,
en torno al cáliz y al pan,
Y nos invitas a ser
la luz del mundo y la sal.
donde haya odio y dolor
haremos presente tu paz;
en cada gesto de amor,
María, Madre, estará.
''');
    Song songLentHolyWeekEaster16 = Song('Burden are lifted at calvary', '''
Days are filled with sorrows and cares, hearts are lonely and dear.
 
Burdens are lifted at calvary (x2)
Jesus is very near.
 
Cast your cares on Jesus today; leave your worry and care.
Troubled souls the saviour can see, every heart ache and fear
''');
    Song songLentHolyWeekEaster17 = Song('Rock of ages', '''
Rock of ages, cleft for me,
let me hide myself in Thee,
let the water and the blood,
from Thy wounded side which flowed,
be of sin the double cure
cleanse me from its guilt and power.

Not the labours of my hands  
can fulfil Thy laws demand,
could my zeal no respite known,
could my tears forever flow,
all for sin could not atone,
thou must save and thou alone.

Nothing in my hand I bring
Simply to thy cross I cling,
Naked come to Thee for dress,
Helpless look to Thee for grace,
Foul I to the fountain fly,
Wash me saviour or I die.
''');
    Song songLentHolyWeekEaster18 = Song('All to Jesus I surrender', '''
All to Jesus I surrender,
all to him I freely give,
I will ever Love and Trust Him,
in His presence daily life.

I surrender all, I surrender all 
all to thee my blessed savior,
I surrender all.

All to Jesus I surrender,
humbly at his feet I bow,
worldly pleasure all forsaken,
take me , Jesus tame me now.

All to Jesus I surrender, 
Lord I give myself to thee,
fill me with thy love and power,
let thy blessing fall on me.

All to Jesus I surrender,
make me saviour wholly thine,
let me feel the Holy Spirit,
truly know that thou art mine.

All to Jesus I surrender
now I feel the sacred flame, 
oh the joy of full salvation,
glory, glory to his name.
''');
    Song songLentHolyWeekEaster19 = Song('Padre, vuelvo a ti', '''
Querido Padre cansado vuelvo a ti.
Haz que conozca,
el don de tu amistad.
Vivir por siempre,
el gozo del perdón, 
y en tu presencia,
tu fiesta celebrar.

Pongo en tus manos,
mis culpas oh Señor.
Estoy seguro, 
de que eres siempre fiel.
Dame la fuerza para poder andar,
buscando en todo,
hacer tu voluntad.

Padre, yo busco tu amor.
Padre, vuelvo a ti.
Mira que tu hijo soy.
Padre vuelvo a ti.

Lo reconozco a veces olvidé,
que eres mi Padre,
y que a mi lado estás,
que soy tu hijo,
y me aceptas como soy,
sólo me pides,
vive en sinceridad.

Quiero sentirte,
cercano a mi Señor,
oír tu voz,
que me habla al corazón,
sentirme libre,
desde tu libertad,
ser signo vivo, de la fraternidad.
''');
    Song songLentHolyWeekEaster20 = Song('Bwana Yesu Kafufuka', '''
Bwana Yesu kafufuka, 
tumwimbie aleluya, aleluya, 
Aleluya, aleluya, aleluya, aleluya, aleluya, 

1. Kweli Yesu kafufuka, asubuhi na mapema 
   
2. Kaburini ametoka, vile alivyoagua, 
   
3. Ameishinda mauti, amemshinda shetani 
   
4. Mbingu imefunguliwa, uzima umerudishwa, 
   
5. Sitakufa nitaishi, kutaja sifa za Bwana 
   
6. Ewe Yesu mshindaji, tuhurumie sisi 
   
7. Shukrani kwa Mungu wetu, kwa kuwa yeye ni mwema,
''');
    Song songLentHolyWeekEaster21 = Song('O Mother most afflicted', '''
O Mother most afflicted,
standing beneath that tree,
where Jesus hangs in rejection,
on the hill of Calvary.

O sweet Mother,
we love and pity thee,
oh for the sake of Jesus let us thy children be

Thy heart is well high breaking,
the Jesus thus to see derided wounded dying,
in greatest agony.

O Mary queen of martyrs,
the sword has pieced thy heart obtain us in Jesus,
thy grief to take apart.

O dear loving mother,
entreat that we may be,
near Jesus now and eternally.
''');
    Song songLentHolyWeekEaster22 = Song('Lord Jesus, think on me', '''
Lord Jesus, think on me 
And purge away my sins; 
From earth-born passions set me free, 
And make me pure within.

Lord Jesus, think on me, 
With care and woe oppressed;
Let me thy loving servant be,
And taste thy promised rest.

Lord Jesus, think on me 
Amid the battle's strife;
In all my pain and misery 
Be thou my health and life.

Lord Jesus, think on me, 
Nor let me go astray;
Through darkness and perplexity 
Point thou the heavenly way.
''');
    Song songLentHolyWeekEaster23 = Song('Jesús Cristo', '''
Jesús Cristo
Jesús Cristo
Jesús Cristo yo estoy aquí. (x3)

Miro hacia el cielo y veo una nube blanca
que está pasando
miro a la tierra y veo
una multitud que está caminando
como esa nube blanca
esa gente no sabe adónde va
quién les podrá decir
El camino cierto es nuestro señor.

Jesús Cristo
Jesús Cristo
Jesús Cristo yo estoy aquí. (x2)

Toda esa multitud
en el pecho lleva el amor y paz
y a pesar de todo la esperanza
aumenta más
mirando la flor que nace en suelo
de aquél que tiene amor
miro al cielo y siento
aumentar la fe en mi salvador

Jesús Cristo
Jesús Cristo
Jesús Cristo yo estoy aquí. (x3)

En cada esquina veo
El mirar perdido de un hermano
en busca del mismo bien con la misma fe viene caminando
es mi deseo ver
aumentando siempre esa procesión
para que todos canten
en una voz esta oración.

Jesús Cristo
Jesús Cristo
Jesús Cristo yo estoy aquí (x4)
''');
    Song songLentHolyWeekEaster24 = Song('Watumishi Wake Baba', '''
1. Watumishi wake Baba wangapi waliopo
   Wanakula na kusaza chakula chake Baba
   Nami - Nami nataabika hapa
   Nashi - Nashiriki na nguruwe
   Chaku - Chakula kisichofaa, yanipasa kurudi
   Nita - Nitarudi na kusema
   Baba - Baba yangu nisamehe
   Nime - Nimekosa kwake Mungu, na mbele yako Baba
   
2. Baba kamwona yu mbali kashikwa na huruma
   Akakimbia kumlaki kamkumbata na busu
   
3. Baba sistahili tena kuitwa mwana wako
   Unifanye kama mmoja wa watumishi wako
   
4. Baba yangu nimekosa ninaomba huruma
   Unisamehe nirudi nikakutumikie
   
5. Wanikaribisha mimi kwenye karamu yako
   Meza imeandaliwa inaningoja mimi
   
6. Nasogea ninakuja ninakukimbilia
   Mimi ni mtoto mpotevu Baba unipokee
''');
    Song songLentHolyWeekEaster25 = Song('Padre escucha mi oración', '''
Padre escucha mi oración,
pues de todo corazón,
vengo a pedirte perdón.
Ten piedad, si, óyenos,
tus mandatos olvidé,
tu palabra desperdicié,
más hoy vuelvo hasta tus pies.
Ten piedad, si, óyenos.

Y viva el amor, que nos ha dado el ser.
Y viva el amor, la verdadera ley.
Y viva el amor que nos libera.
Ten piedad, si, óyenos.

Ciegos, haz que podamos ver,
esclavos, danos la libertad,
viejos danos tu juventud.
Ten piedad, si, óyenos.
Muertos, haznos resucitar,
culpables, concédenos perdón,
heridos, llévanos a tu paz.
Ten piedad, si óyenos.

A tu lado quiero ir,
porque ya se que sin ti,
no seré jamás feliz.
Ten piedad, si, óyenos.
Dame fuerzas para amar,
a tu lado caminar,
y tu cielo conquistar.
Ten piedad, si, óyenos.
''');
    Song songLentHolyWeekEaster26 = Song('Yesu Mwana wa Mungu', '''
   Yesu Mwana wa Mungu * 2 Leo amefufuka
   Piga vigelegele *2 leo amefufuka
   
1. Yesu Mwana wa Mungu kweli amefufuka
   Ahadi yatimia mzima amefufuka
   
2. Kristu mshindaji, mkubwa ametupatanisha
   Na babaye Mbingunikwa damuye azizi
   
3. Kristu mwanakondoo amechinjwa sadaka
   Tuile karamuye tuimbe aleluya
   
4. Kristu mchingaji mwema alitoa maisha
   Kwa ajili ya kondoo mzima amefufuka
   
5. Kristu aliuawa katika udhaifu
   Anaishi daima kwa nguvu yake Mungu
   
6. Nendeni duniani kahubiri Injili
   Wote wabatizwao Mbingu watauridhi
   
7. Nitawahubiria ndugu zangu daima
   Jina lako tukufu nitakusifu sana
   
8. Leo ndiyo siku kuu ilifanywa na Mungu
   Umefufuka Mbingu kwa ushindi wa Yesu.
''');
    Song songLentHolyWeekEaster27 = Song('Amazing grace', '''
Amazing grace!
how sweet the sound,
that saved a wretch like me!
I once was lost but now am found,
was blind, but now I see.
 
T'was grace that taught,
my heart to fear,
and grace my fears relieved.
how precious did that grace appear
 the hour I first believed.
 
Through many dangers,
toils and snares,
I have already come;
t'was grace that brought me safe thus far,
and grace will lead me home.
 
When we've been there,
ten thousand years,
bright shining as the sun;
we've no less days to sing God's praise
than when we first begun.
''');
    Song songLentHolyWeekEaster28 = Song('Seek ye first', '''
Seek ye first, the kingdom of God,
and his righteousness,
and all these things will be added unto you.

Alle - lu - Alle - luia (x2).
 
Ask and it shall be given unto you,
seek and you shall find,
knock and it shall be opened unto you,
Alleluia, alleluia.

Man shall not live by bread alone,
but by every word,
that proceeds,
from the mouth of God.
Alle-lu-Alle-luia (x2)

Let your light so shine before men,
that they may see your good works,
and glorify your Father in heaven.
Alle-lu-Alle-luia (x2)
''');
    Song songLentHolyWeekEaster29 = Song('Saviour', '''
Everyone needs compassion,
a love that is never failure, let the mercy fall on me,
everyone needs forgiveness,
the kindness of a saviour,
the hope of the nation.

Saviour, he can move the mountain,
my God is mighty to save,
He is mighty to save forever.

Author of salvation,
He rose and conquered the grave,
Jesus conquered the grave.

Now take me as you find me,
with all fear and failure,
feel my heart again,
I give to follow,
now I surrender
''');
    Song songLentHolyWeekEaster30 = Song('Where you there?', '''
Where you there when they crucified my Lord!
where you there when they crucified my Lord?

Oh! Sometimes, its causes me
to tremble, tremble, tremble.

were you there when they crucified my Lord?

Where you there when they 
nailed Him to a cross?....

Where you there when they pierced Him in the side?

Where you there when the sun refused to shine?....

Were you there when they laid him in the tomb?....
''');
    Song songLentHolyWeekEaster31 = Song('La sal de la tierra', '''
Tú eres del mundo la luz (x2).
En una lumbre que no arde
no cocina ni mi madre:
hay que iluminar y ser del mundo la luz.

Tú eres del mundo la sal (x2)
pero una sal mojada
ya no sirve para nada
hay que ser la sal que nunca
pierde el sabor.

Hay que encender la lámpara
hay que despertar
para que el mundo tenga luz
y todos vivan en paz.

Tú eres la casa de Dios (x2)
pero a una casa en ruinas
nadie puede ir a vivir
la casa de Dios
es siempre casa del sol.

Tú eres del mundo la luz (x2)
pero una buena luz
necesita un buen candil:
hay que iluminar y ser del mundo la luz.
''');
    Song songLentHolyWeekEaster32 = Song('El que muere feliz', '''
Todo empezó en una cruz
Donde un hombre murió y un Dios se entregó
Silenciosa la muerte llegó
Extinguiendo la luz que en un grito se ahogó
Viendo su faz de dolor
Una madre lloró y su amigo calló
Pero siendo una entrega de amor
Su camino siguió y en algún otro lado
Una luz se encendió
Siendo hombre, amigo, esclavo y maestro
Siendo carga pesada, profesor y aprendiz
Entregó hasta su cuerpo en el pan y en la vid
Desde entonces lo he visto caminar a mi lado
A ese Dios que se humilla y muere por mí
Es la barca en mi playa, el ruido del silencio
Que se acerca a su hijo y me abraza feliz
Que se acerca a su hijo y me abraza feliz
Viendo un humilde calvario
Con un rostro cansado, soporta la cruz
Y al verme rezando a sus pies
Se olvida de Él, me toma en sus brazos
Me acoge otra vez
Siendo fuego, paloma, el agua, y el viento
Siendo un niño inocente, un padre y pastor
Voy a aceptar mi ofrenda que mi vida seño
Desde entonces lo he visto caminar a mi lado
A ese Dios que se humilla y muere por mí
En la barca en mi playa, el ruido del silencio
Que se acerca a su hijo y me abraza feliz
Que se acerca a su hijo y me abraza feliz
Y si ahora yo acepto esa cruz
Fue por esa persona, ese Dios
Fue por Cristo Jesús
Desde entonces lo he visto caminar a mi lado
A ese Dios que se humilla y muere por mí
En la barca en mi playa, el ruido del silencio
Que se acerca a su hijo y me abraza feliz
Que se acerca a su hijo y me abraza feliz
''');
    Song songLentHolyWeekEaster33 = Song('Ikatetemeka', '''
Ikatetemeka nchi yote makaburi yakafunguka,
(Giza) Giza likafunika nchi ikatetemeka

Ikatetemeka nchi yote makaburi yakafunguka,
(Giza) Giza likafunika nchi ikatetemeka
Na tazama akashuka Bwana,
Mfalme wa Mbingu na dunia,
Mwenye fimbo mkononi mwake,
Ishara yake ni kuchunga kondoo
(Chimbuko ni umoja, chimbuko ni upendo)
Matunda ni amani, ni amani
(Chimbuko ni umoja, chimbuko ni upendo)
Matunda ni amani, ni amani

Tumshanglie kuhani, Kristu Bwana Mwokozi wetu
Kashinda dhambi na mauti, tuimbe aleluya
Ikatetemeka nchi yote makaburi yakafunguka,
(Giza) Giza likafunika nchi ikatetemeka

Ikatetemeka nchi yote makaburi yakafunguka,
(Giza) Giza likafunika nchi ikatetemeka
Na tazama akashuka Bwana,
Mfalme wa Mbingu na dunia,
Mwenye fimbo mkononi mwake,
Ishara yake ni kuchunga kondoo
(Chimbuko ni umoja, chimbuko ni upendo)
Matunda ni amani, ni amani
(Chimbuko ni umoja, chimbuko ni upendo)
Matunda ni amani, ni amani

Jiwe walilolikataa, waashi limekuwa,
Limekuwa jiwe kuu, tena la pembeni

Ikatetemeka nchi yote makaburi yakafunguka,
(Giza) Giza likafunika nchi ikatetemeka

Ikatetemeka nchi yote makaburi yakafunguka,
(Giza) Giza likafunika nchi ikatetemeka
Na tazama akashuka Bwana,
Mfalme wa Mbingu na dunia,
Mwenye fimbo mkononi mwake,
Ishara yake ni kuchunga kondoo
(Chimbuko ni umoja, chimbuko ni upendo)
Matunda ni amani, ni amani
(Chimbuko ni umoja, chimbuko ni upendo)
Matunda ni amani, ni amani

Ni ushindi kubwa mno, ushindi
Ushindi wa pekee, tuimbe aleluya

Ikatetemeka nchi yote makaburi yakafunguka,
(Giza) Giza likafunika nchi ikatetemeka

Ikatetemeka nchi yote makaburi yakafunguka,
(Giza) Giza likafunika nchi ikatetemeka
Na tazama akashuka Bwana,
Mfalme wa Mbingu na dunia,
Mwenye fimbo mkononi mwake,
Ishara yake ni kuchunga kondoo
(Chimbuko ni umoja, chimbuko ni upendo)
Matunda ni amani, ni amani
(Chimbuko ni umoja, chimbuko ni upendo)
Matunda ni amani, ni amani
''');
    Song songLentHolyWeekEaster34 = Song('Pasipo Makosa', '''
1. Pasipo makosa Mkombozi wetu,
   Katika baraza la wakosefu
   Na wote walia asulibiwe,
   Aachwe Baraba na Yesu afe
   Aachwe Baraba na Yesu afe
   
2. Ee Yesu washika msalaba wako,
   Na unakubali kufa juu yake
   Ee Yesu useme sababu gani,
   Ya nini mateso makali hayo?
   Ya nini mateso makali hayo?
   
3. Ni pendo kwa Baba wa uwinguni,
   Ni huruma yangu kwa wakosefu.
   Ewe mkristu kumbuka mateso yangu,
   Uache makosa, uache dhambi
   Uache makosa, uache dhambi
''');
    Song songLentHolyWeekEaster35 = Song('O Lord my God', '''
O Lord my God, 
when I in awesome wonder, consider all,
the woorks they hand has made
I see the stars,
I hear the rolling thunder, 
thy power through out 
the universe displayed.
 
Then sings my soul,
my saviour, God to thee,
how great thou art (x2).
 
When through the woods 
and forest glades I wander,
and hear the birds 
sing sweetly in the trees,
when I look down,
from lofty mountain grander,
and hear the brook and feel,
the gentle breeze.
 
And when I think 
that God, his Son not sparing,
sent him to die, 
I scarce can take it in.
that on the cross,
my burden gladly bearing,
he bled and died 
to take away my sin,

When burdens press,
and seem beyond endurance; bowed down with grief, 
to him I lift my face,
and when in love 
he brings me sweet assurance;
"my child for thee,
sufficient is my grace".
''');
    Song songLentHolyWeekEaster36 = Song('God of Mercy', '''
God of Mercy and compassion, look with pity upon me,
father, let me call Thee Father,
its they child returns to Thee.

Jesus, Lord, I ask for mercy,
let me not implore in vain,
all my sins I now detest them, never will I sin again.

By my sins I have abandoned right
and claim to heaven above, where the saints rejoice forever, in a boundless sea of love.

By my sins I have deserved death, and endless misery, 
hell with all its pains and torments,
and for all eternity.

See our Saviour, bleeding, dying, on that cross of Calvary,
to that cross my sins have nailed Him, 
yet He bleeds and dies for me.
''');

    Song songGeneral1 = Song('Ten fe y goza', '''
Te has preguntado alguna vez,
porque reprimimos nuestras ansias;
no podemos descansar,
hay que trabajar,
no podemos viajar,
no hay dinero,
no podemos estar alegres,
somos huraños,
no podemos amar,
hay que odiar.

Libérate ahora y lánzate a tumba abierta,
hacia unos espacios de ensueño
que serán realidad,
a medida que tu mente,
no crea escandalizar,
a seres mecanizados por el hombre (x2).

Tuve un amigo que me enseñó,
donde estaban las bellezas de la vida,
ahora tengo un hermano,
que vive conmigo el gozo de amar (x2)
tengo fe en amigo, amor, hermano,
fructificado  en otros muchos más (x2)

Hoy sólo quiero descansar,
que no es dejar de trabajar.
si no descanso, pienso y amo,
quizás mañana ya no tenga
hermano (x2)
a quien decir "Ama la vida y la muerte,
y cuando más fiel a Cristo,
más fuerte" (x2)
''');
    Song songGeneral2 = Song('Bendita la luz', '''
Bendito el lugar y el motivo de estar ahí,
bendita la coincidencia.
bendito el reloj que nos puso puntual ahí,
bendita sea tu presencia.

Bendito Dios por encontrarnos en el camino,
y de quitarme esta soledad de mi destino.

Bendita la luz,
bendita la luz de tu mirada.
bendita la luz,
bendita la luz de tu mirada,
desde el alma.

Benditos ojos que me esquivaban,
simulaban desdén que me ignoraba,
y de repente sostienes la mirada.
bendito Dios por encontrarnos,
en el camino y de quitarme,
esta soledad de mi destino.

Bendita la luz,
bendita la luz de tu mirada,
bendita la luz,
bendita la luz de tu mirada, oh.

Gloria divina de esta suerte,
del buen tino,
de encontrarte justo ahí,
en medio del camino,
gloria al cielo de encontrarte ahora,
llevarte mi soledad,
y coincidir en mi destino,
en el mismo destino.
épale

Bendita la luz,
bendita la luz de tu mirada,
bendita la luz,
bendita la luz de tu mirada.

Bendita mirada, oh,
bendita mirada desde el alma.
Tu mirada, oh oh,
bendita, bendita,
bendita mirada,
bendita tu alma y bendita tu luz.
Tu mirada, oh oh.
Oh oh, te digo es tan bendita,
tu luz amor,
y tu mirada oh, oh.
Bendito el reloj y bendito el lugar,
benditos tus besos cerquita del mar,
y tu mirada, oh, oh,
amor amor, qué bendita tu mirada,
tu mirada amor. 
''');
    Song songGeneral3 =
        Song("Mary Magdalene - I don't know how to love him", '''
I don't know how to love him,
what to do, how to move  to him.
I've been changed, 
yes really changed, 
in these past few days,
when I've seen myself,
I seem like someone else.
 
I don't know how to take this,
I don't see why he moves me.
He's a man, he's just a man,
and I've had so many men before,
in very many ways
he's just one more.
 
Should I bring him down,
should I scream and shout.
should I speak of love,
let my feelings out.
I never thought I'd come to this:
what's it all about.
 
Don't you think it's rather funny,
I should be in this position.
I'm the one who's always been,
so calm so cool, no lover's fool
running every show,
he scares me so,
 
Yet if he said he loved me,
I'd be lost, I'd be frightened,
I couldn't cope, just couldn't cope,
I'd turn my head, I'd back away
I wouldn't want to know.
he scares me so. I want him so,
I loved him so.
''');
    Song songGeneral4 = Song('Oracion del remanso', '''
Soy de la orilla brava del agua turbia y la correntada
Que baja hermosa por su barrosa profundidad
Soy un paisano serio, soy gente del remanso Valerio
Que es donde el cielo remonta el vuelo en el Paraná

Tengo el color del río y su misma voz en mi canto sigo
El agua mansa y su suave danza en el corazón
Pero a veces oscura va turbulenta en la ciega hondura
Y se hace brillo en este cuchillo de pescador

Cristo de las redes
No nos abandones
Y en los espineles
Déjanos tus dones

No pienses que nos perdiste, es que la pobreza nos pone tristes
La sangre tensa y uno no piensa más que en morir
Agua del río viejo, llévate pronto este canto lejos
Que está aclarando y vamos pescando para vivir

Llevo mi sombra alerta sobre la escama del agua abierta
Y en el reposo vertiginoso del espinel
Sueño que alzo la proa y subo a la luna en la canoa
Y allí descanso, hecha un remanso mi propia piel

Calma de mis dolores, ay, Cristo de los pescadores
Dile a mi amada que está apenada esperándome
Que ando pensando en ella mientras voy vadeando las estrellas
Que el río está bravo y estoy cansado para volver

Cristo de las redes
No nos abandones
Y en los espineles
Déjanos tus dones

No pienses que nos perdiste, es que la pobreza nos pone tristes
La sangre tensa y uno no piensa más que en morir
Agua del río viejo, llévate pronto este canto lejos
Que está aclarando y vamos pescando para vivir

Agua del río viejo, llévate pronto este canto lejos
Que está aclarando y vamos pescando para vivir
''');
    Song songGeneral5 = Song('Color esperanza', '''
Se que hay en tus ojos con solo mirar,
que estas cansado de andar y de andar,
y caminar , girando siempre en un lugar.

Se que las ventanas se pueden abrir,
cambiar el aire depende de ti
te ayudara, vale la pena una vez mas.

Saber que se puede, querer que se pueda,
quitarse los miedos sacarlos afuera,
pintarse la cara color esperanza,
entrar al futuro con el corazón.

Es, mejor perderse que nunca embarcar,
mejor tentarse a dejar de intentar,
aunque ya ves que no es tan fácil empezar.

Se que lo imposible se puede lograr,
que la tristeza algún día se irá,
y asi será la vida cambia y cambiara…

Sentirás que el alma vuela,
por cantar una vez más,

Saber que se puede, querer que se pueda,
quitarse los miedos sacarlos afuera
pintarse la cara color esperanza,
entrar al futuro con el corazón (x2)

Vale mas poder brillar,
que solo buscar ver el sol,

Pintarse la cara color esperanza,
entrar al futuro con el  corazón.

Saber que se pueeede, querer que se pueeeda,
pintarse la cara color esperanza,
entrar al futuro con el corazón.

Saber que se puede, querer que se pueda,
quitarse los miedos sacarlos afuera,
pintarse la cara color esperanza,
entrar al futuro con el corazón.

Saber que se pueeede querer que se pueeeda,
pintarse la cara color esperanza,
entrar al futuro con el corazon...(x2).
''');
    Song songGeneral6 = Song('No temas', '''
Si aún no lo ves
Pronto lo verás
Todo un Dios enamorado de ti
Habla bien de Él
Que no mentirás
Todo lo hizo para hacerte feliz
Lo que pasa es que el mundo no quiere escuchar
No vaya a ser que vea, que entienda y se empape
De esta alegría que nos quiere regalar
No vaya a ser que entienda, se convierta y se sane
No temas a la Luz
No temas a la Paz
No temas a la Alegría
No tengas miedo a ser feliz
Porque Él es el Camino que se ha abierto para ti
Porque Él es "El que es"
Ahora puedes ser feliz
''');
    Song songGeneral7 = Song('Labrador', '''
El arado sordo rompe con fuerza
bloques de tierra seca.
El rastrojo y las malas hierbas,
arrancadas de cuajo yacen muertas.
El campo queda desnudo y
la tierra roja al descubierto,
como brechas sangrantes del alma,
como ríos de pausado llanto.

¡Ay de mí, tierra seca!
¡Qué soy yo sino árido desierto!
Si no estuvieras tú, labrador,
sin tus manos providentes.

Sólo ahora se oye el gemir
de la tierra nueva hambrienta.
Y siembra el grano a puñados
con desmesurada abundancia.

Estribillo

Que grande la pereza mía,
que pesado el sueño de mi vida.
Qué burda la existencia sería,
Sin ti, labrador, sin tu cosecha.

Estribillo
''');
    Song songGeneral8 = Song('Gracias a la vida', '''
Gracias a la vida que me ha dado tanto,
me dio dos luceros que cuando los abro,
perfecto distingo lo negro del blanco
y en el alto cielo su fondo estrellado
y en las multitudes el aquél que yo amo.

Gracias a la vida que me ha dado tanto,
me ha dado el sonido y el abecedario,
con él las palabras que pienso y declaro,
madre, amigo, hermano y luz alumbrando,
la ruta del alma del que estoy amando.

Gracias a la vida que me ha dado tanto,
me ha dado la marcha de mis pies cansados,
con ellos anduve ciudades y charcos,
playas y desiertos montañas y llanos
y la casa tuya, tu calle y tu patio.

Gracias a la vida que me ha dado tanto,
me dio el corazón que agita su marco,
cuando miro el fruto del cerebro humano,
cuando miro al bueno tan lejos del malo,
cuando miro al fondo de tus ojos claros.

Gracias a la vida que me ha dado tanto,
me ha dado la risa y me ha dado el llanto,
así yo distingo dicha de quebranto,
los dos materiales que forman mi canto,
y el canto de ustedes que es el mismo canto,
y el canto de todos que es mi propio canto.

Gracias a la vida,
gracias a la vida,
gracias a la vida,
gracias a la vida,
que me ha dado tanto!
''');
    Song songGeneral9 = Song('To God be the glory', '''
To God be the glory! Great thing, 
he has done!
so loved He the world that 
he gave us His son.
who yielded His life atonement for sin,
and opened the life-gate that all may go in.

Praise the Lord, praise the Lord.
let the earth hear His voice.
praise the Lord, Praise the lord,
let the people rejoice!
o come to the father through Jesus the son,
and give Him the glory!
great things he has done.

O perfect redemption, the purchase of the blood!
to every believer, 
the promise of God,
the vilest offender who truly believes,
that moment from Jesus,
a pardon receives.

Great things he has taught us,
great things he has done,
and great our rejoicing through Jesus the son,
but purer and higher 
and greater will be,
our wonder, our worship, 
when Jesus we see.
''');
    Song songGeneral10 = Song('Vivir tu alternativa', '''
Alcancé a llamar la noche
y dulcemente en mis rodillas se posó.
fui meciéndola despacio,
hasta penetrar en mi interior.
Me empujó a deslizarme,
por las sendas de un
Sueño celeste,
que iba cobrando realidad,
a medida que mi mente,
despertaba,
perezosa con el alba.

Ya oigo los susurros que aumentan,
y reclaman a las leyes e ilustrados,
su derecho no sólo a pensar,
sino a vivir su alternativa (x2).

Las condiciones para la utopía,
están ahora en nuestras manos;
podremos descansar y jugar,
más que trabajar y producir.
Que nadie se escude más.
en el “ganar el pan,
con el sudor de su frente”,
las máquinas van a sudar por él,
y así hacer que la imaginación,
se vuelva realidad.
''');
    Song songGeneral11 = Song('Tamandani Ambuye', '''
Titamandani ambuye mafuko onse*
Titamandani iye makamu onse.
Chifukwa chifundo chao chalimbitsira ife*
Ndi mau ambuye ngoona nthawi zonse.
Ulemu ukhale kwa atate ndi kwa mwana*
Ndi kwa mzimu woyera
Monga panali poyamba nditsopano ndi masiku onse*
Ndi panthawi zosatha. Amen
''');
    Song songGeneral12 = Song('Symbolum', '''
Tu sei la mia vita altro io non ho,
tu sei la mia strada la mia verità,
nella Tua parola lo camminerò,
finche apro respiro, fino a quando Tu vorrai,
Io Ti prego resta con me.

Credo in te Signore nato da Maria,
Figlio eterno e santo uomo come noi,
morto per amore vivo in mezzo a noi,
una cosa sola con il Padre e come i tuoi,
fino a quando io lo so, Tu ritornerai,
per aprirci il regno di Dio.

Tu sei la mia forza altro io non ho,
tu sei la mia pace la mia libertà,
niente nella vita ci separerà,
so che la tua, mano forte non mi lascerà,
so che da ogni male Tu mi libererai,
en nel Tuo perdono vivrò.

Padre della vita noi crediamo in Te,
Figlio Salvatore noi speriamo in Te,
Spirito d'amore vieni in mezzo a noi,
Tu da mille strade ci raduni in unità,
e per mille strade poi dove Tu vorrai,
noi saremo il seme di Dio.
''');
    Song songGeneral13 = Song('Ein Haus voll Glorie', '''
Ein Haus voll Glorie schauet
weit über alle Land,
aus ewgem Stein erbauet
von Gottes Meisterhand.
Gott, wir loben dich,
Gott, wir preisen dich.
O lass im Hause dein
uns alle geborgen sein. 

Auf Zion hoch gegründet
steht Gottes heilge Stadt,
dass sie der Welt verkündet,
was Gott gesprochen hat.
Herr, wir rühmen dich,
wir bekennen dich;
denn du hast uns bestellt
zu Zeugen in der Welt. 
''');
    Song songGeneral14 = Song('Vocación de Saulo', '''
Corriendo camino a Damasco,
Al Señor se encontró,
en forma de luz,
en forma de voz,
lo derribó.

“Saulo,
¿Por qué me persigues?”
¿Quién eres tú Señor?
“Soy Jesús, el Hijo de Dios,
levántate y entra en la ciudad.

Ahí te dirán,
lo que tienes que hacer,
sufrirás por mí,
hablarás por mí,
lleno del Espíritu Santo serás,”

Corriendo caminos del mundo,
al señor anunció,
en forma de cruz,
en forma de amor,
lo proclamó.

Pablo fue a muchas ciudades,
cruzó montañas y el mar,
estuvo libre, estuvo en prisión,
fundó iglesias y a muchos engendró.

Les llamó a que fueran con él:
“Sufrirás por Él,
hablaras por Él,
lleno del Espíritu Santo serás”.
''');
    Song songGeneral15 = Song('Lord I need you', '''
Lord I come, I confess
Bowing here, I find my rest
Without You, I fall apart
You're the one that guides my heart
Lord, I need You, oh, I need You
Every hour, I need You
My one defense, my righteousness
Oh God, how I need You
Where sin runs deep, Your grace is more
Where grace is found is where You are
And where You are, Lord, I am free
Holiness is Christ in me
Lord, I need You, oh, I need You
Every hour, I need You
My one defense, my righteousness
Oh God, how I need You
So teach my song to rise to You
When temptation comes my way
And when I cannot stand, I'll fall on You
Jesus, You're my hope and stay
Lord, I need You, oh, I need You
Every hour, I need You
My one defense, my righteousness
Oh God, how I need You
You're my one defense, my righteousness
Oh God, how I need You
My one defense, my righteousness
Oh God, how I need You
''');
    Song songGeneral16 = Song('Kaunga ya chee', '''
Kaunga ya chee (x3)
ulimwenguni ya dire dia makongo (x2)

Kaunga y di nyira sere ,
kaunga ya di, nyira ndingi 
ya dire dia kifo na vasi
kaunga y ditanya na Mlungu

Da genda, kwa vaganga,
da funya, mafungu malasi,
da regezwa na kusonwa koru
dariwa mganga ni yesu (x2)

Dhambi ilikuja (x3)
ulimwenguni
ukaleta magonjwa (x2)

Dhambi huodoa wema,
dhambi ya tutia uovu,
inatuletea kifo na kisha
dhambi ya tutenga na Mungu (x2)

Nilienda kwa waganga,
nikatoa vitu vyangu vyote,
nikachinjwa na kuuliwa,
nikamsahau mganga ni Yesu X2

Kaunga ya chee (x3)
ulimwenguni ya dire dia magongo  (x2)
''');
    Song songGeneral17 = Song(
        'Besheelekon bihon beterara (In the valleys or in the mountains God will walk with me)',
        '''
Besheelekon bihon
beterara (2)
getaa  yiramedal
kenya gara (2)
eindairiben endaitaman 
yehiwet megeb lihonen
esbochu simaku
beamlakachen 
baherul leulet kafalacheu
beesat bedemmena yemerracheu
ketelat mangaga awetacheu.

Bemiekate harur
bennekwasem
geta selagenyen kato annefaram
uha beetafabet bennekwasem
cher amlak selalen annetaman.

Beselalem fekru
Yeemiweden 
Beelemenleme mesk yemimara
Baltasebe saat yemiadinen
Meratu yemayalk abat alen.
''');
    Song songGeneral18 = Song('Lobe den herren (Te Deum)', '''
Lobe den Herren, den mächtigen König der Ehren;
lob ihn, o Seele, vereint mit den himmlischen Chören.
Kommet zu hauf,
Psalter und Harfe, wacht auf,
lasset den Lobgesang hören.

Lobe den Herren, der künstlich und fein dich bereitet,
der dir Gesundheit verliehen, dich freundlich geleitet.
In wieviel Not
hat nicht der gnädige Gott
über dir Flügel bereitet.

Lobe den Herren, der alles so herrlich regieret,
der dich auf Adelers Fittichen sicher geführet,
der dich erhält,
wie es dir selber gefällt.
Hast du nicht dieses verspüret?

Lobe den Herren, was in mir ist, lobe den Namen.
Lob ihn mit allen, die seine Verheißung bekamen.
Er ist dein Licht;
Seele, vergiss es ja nicht.
Lob ihn in Ewigkeit. Amen.
''');
    Song songGeneral19 = Song('Amando hasta el extremo', '''
Déjame señor
Mirarte bien por dentro
Entrar en tu corazón
Y dejarme seducir
Y que aumenten mis deseos de querer ser como tú
Conocerte internamente
Amarte y seguirte más
Apostar mi vida junto a ti
Déjame verte señor
Amando hasta el extremo
Dejándote la piel
Entregando las entrañas
Tus entrañas de mujer
En una toalla y un lebrillo
En un acariciar los pies
En un mirarnos hasta el fondo
Sin nada que reprochar y
Y sin nada que pedir, y con tanto para dar
Yo, el maestro y el señor
Ya no puedo amaros más
Pues como el padre me ha amado
Así os he amado yo
Os dejo mi vida entera en este vino y este pan
Este pan que soy yo mismo
Que me parto y que me doy
Mi deseo es que os améis de corazón
Yo también os quiero ver
Amando hasta el extremo
Dejándoos la piel
Entregando las entrañas
Como lo hace una mujer
En una toalla y un lebrillo
En un acariciar los pies
En un miraros hasta el fondo
Sin nada que reprochar
Y sin nada que pedir, y con tanto para dar
Sí, te doy todo lo que soy
Para que sigas amando
La lucha por la justicia
Entra en esta intimidad
Que se llena de personas y rostros que acariciar
Que me impulsa desde dentro a comprometerme más
Todos caben en tu corazón
Quiero seguirte señor
Amando hasta el extremo
Dejándome la piel
Entregando las entrañas
Mis entrañas de mujer
En una toalla y un lebrillo
En un acariciar los pies
En un miraros hasta el fondo
Sin nada que reprochar
Y sin nada que pedir, y con tanto para dar
Y sin nada que pedir, y con tanto para dar
Y sin nada que pedir, y con tanto para dar…
''');
    Song songGeneral20 = Song('Wer nur den lieben Gott lässt walten', '''
Wer nur den lieben Gott lässt walten und hoffet auf ihn allezeit,
den wird er wunderbar erhalten
in aller Not und Traurigkeit.
Wer Gott dem Allerhöchsten traut,
der hat auf keinen Sand gebaut.

Was helfen uns die schweren Sorgen,
was hilft uns unser Weh und Ach?
Was hilft es, dass wir alle Morgen
beseufzen unser Ungemach?
Wir machen unser Kreuz und Leid
nur größer durch die Traurigkeit.
''');
    Song songGeneral21 = Song('Canticle of Daniel - CHICHEWA', '''
Nchito za Mulungu ndi zolengedwa zake
Tamandani mbuye kulitsani iye
Ndi panthawi zones ndi pamaiko ponse
Tamandani mbuye kulitsani iye
 
 
Dzuwa lowalitsa, mwezi wonyezimira
Tamandani mbuye kulitsani iye
Ndi inu nyanyazi pakung'anima m'mwamba
Tamandani mbuye kulitsani iye
 
Mame, nkhungu, mvula zokhathamira m'dothi
Tamandani mbuye kulitsani iye
Mphepo youzira ndiyofukitsa fumbi
Tamandani mbuye kulitsani iye
 
Makamaka inu anthu muli ndi nzeru
Kondanani naye ndi mphamvu zanu
zonse.  Makamaka inu anthu muli ndi
nzeru Tamandani mbuye kulitsani iye
 
Msana ndi usiku, poyanjana limodzi,
Tamandani mbuye kulitsani iye
Binguso ndi mphezi pakuchita ukali
Tamandani mbuye kulitsani iye
 
Mapiri, magomo, mathanthwe ndi maphompho
Tamandani mbuye kulitsani iye
Mbeu ndi mitengo, maluwa ndi zipatso
Tamandani mbuye kulitsani iye
 
Nsomba zosambira m'mistinje ndi zinyanja
Tamandani mbuye kulitsani iye
Ntchentche ndi mbalame zouluka
pamwamba
Tamandani mbuye kulitsani iye
 
Nyama zakutchire, zoyenda ndi liwiro
Tamandani mbuye kulitsani iye
Pakugwira ntchito akupangitsa inu
Tamandani mbuye kulitsani iye
 
Makamaka inu anthu muli ndi nzeru
Tamandani mbuye kulitsani iye
Kondanani naye ndi mphamvu zanu 
zonse
Tamandani mbuye kulitsani iye
 
Mverani, akhristu mau ake a Yesu
Tamandani mbuye kulitsani iye
Kumbukiranitu malonjezono anu
Tamandani mbuye kulitsani iye
 
Nonsenu ansembe ndi othandiza ake
Tamandani mbuye kulitsani iye
Phunzitsani anthu zokoma zake zonse
Tamandani mbuye kulitsani iye
 
Mizimu yabwino mukondwera
kumwamba 
Tamandani mbuye kulitsani iye
Potipepherera ife anthu ochimwa
Tamandani mbuye kulitsani iye
''');
    Song songGeneral22 = Song('Te imagino ', '''
Te imagino y la soledad se me llena de ti.
Y no es fácil poder decir lo que llego a sentir:
Llevo tiempo buscándote, en mi alma y mi piel,
Llevo tiempo soñando que, no te quiero perder.
Eres tan frágil como una cruz,
llenas mi amanecer.

Si no me alumbras yo no, 
no me acabo de encender,
y soy un corazón que se deriva,
y late cada vez con menos vida.
Llevo tiempo buscándote…
''');
    Song songGeneral23 = Song('You are the light of the world! (Godspell)', '''
You are the light of the world!
But if that light is under a bushel,
Brrr, it's lost something kinda crucial
You got to stay bright to be the light of the world.

You are the salt of the earth!
You are the salt of the earth!
But if that salt has lost it's flavor,
It ain't got much in its favor.
You can't have that fault and be the salt of the earth!

So let your light so shine before men
Let your light so shine,
So that they might know some kindness again,
We all need help to feel fine (let's have some wine!)

You are the city of God,
You are the city of God,
But if that city's on a hill,
It's kinda hard to hide it well.
You've got to stay pretty in the city of God.

So let your light so shine before men
Let your light so shine,
So that they might know some kindness again,
We all need help to feel fine (Let's have some wine!).

You are the light of the world!
You are the light of the world!
But the tallest candlestick,
Ain't much good without a wick,
You've got to live right to be the light of the world.
''');
    Song songGeneral24 = Song('La sombra disipada', '''
Envuelto en un resplandor de aureola,
amordazada la luz del día,
intenté acariciar tu brillo,
y me hallé rodeado de sombra.

Te buscaba en la nota
y eras melodía,
inmerso en la espuma,
Tú eras el mar.

Traidora capa de engaño,
superficie que impermeable estás,
a mis sentidos, cierras tu puerta,
y aún no sé bucear.

Mecido en tu brisa tibia,
me escondías el fragor de la tormenta,
y el impetuoso brazo de tu viento,
me negaba su fuerte abrazo.

Te buscaba en la hoja,
y eras la jungla,
crucé el dintel de tu casa,
y eras la ciudad.

Traidora capa de engaño,
superficie que impermeable estás,
a mis sentidos cierras tu puerta,
pero aprenderé a bucear.

Empapado por tu mirada,
navegué por la mar de tus ojos,
aunque jamás nadie ni en sueños,
mencionó su profundidad.

Te busqué en la palabra y eras discurso,
aterricé en tu mundo,
y el cosmos era tu hogar.

Traidora capa de engaño,
superficie que impermeable estás,
a mis ojos cierras tu puerta,
pero bien sabes,
te estoy buceando ya.
''');
    Song songGeneral25 = Song('Brother Sun and Sister Moon!', '''
Brother Sun and Sister Moon!
I seldom feel you!
I can't hear your tune!
preoccupied with selfish misery.

Brother wind, sister air.
open my eyes to visions pure and fair,
that I may see.
the glory around me. 

I am God's creature
of Him I am part
I feel his love
awakening my heart.

Brother Sun and Sister Moon
often I see you
I can hear your tune
so much in love,
with all that I survey.
''');
    Song songGeneral26 = Song('La causa de las guerras', '''
Ya podéis constatar,
que los hombres no esperan,
que las guerras sean vías de libertad.
Todos ven que el dolor,
y las muertes nos hablan,
de las causas vacías de destrucción.

Tú debes descubrir,
la potencia de tu existir.

La solución no está en la paz
que nos imponen,
que ordena y cuadricula.
No aguantaremos mucho tiempo sin soñar,
durmiendo nuestras mentes.

La cuestión primordial,
es saber que es el hombre,
a qué aspira y qué es su felicidad,
nos asegurarán qué nuestras ilusiones,
son estables y quieren seguridad.

No hay ningún estadio ideal,
sólo existen caminos sobre el mar.

Si la paz no es más que las
brasas encendidas,
para inflamar la hoguera:
no será fuego de dolor
ni quemaduras,
será de amor y gozo.

Brinda, pues, tu amistad,
y no cierres tu puerta,
que los vientos que llegan la romperán.
''');
    Song songGeneral27 = Song('All Creatures of Our God and King', '''
All creatures of our God and King,
Lift up your voice and with us sing:
Alleluia! Alleluia!
O burning sun with golden beam
And silver moon with softer gleam:
Oh, praise God! Oh, praise God!
Alleluia, alleluia, alleluia!

O rushing wind and breezes soft,
O clouds that ride the winds aloft:
Alleluia! Alleluia!
O rising morn, in praise rejoice,
O lights of evening, find a voice.
Oh, praise God! Oh, praise God!
Alleluia, alleluia, alleluia!

O flowing waters, pure and clear,
Make music for your Lord to hear.
Alleluia! Alleluia!
O fire so masterful and bright,
Providing us with warmth and light,
Oh, praise God! Oh, praise God!
Alleluia, alleluia, alleluia!

Dear mother earth, who day by day
Unfolds rich blessings on our way,
Alleluia! Alleluia!
The fruits and flow'rs that verdant grow,
Let them God's praise abundant show.
Oh, praise God! Oh, praise God!
Alleluia, alleluia, alleluia!
''');
    Song songGeneral28 = Song('Enciéndeme', '''
Hoy quiero señor, ponerlo todo en tu presencia
Darme hasta gastarme contigo y por ti
Hoy quiero, señor, ponerlo todo ante tu puerta
Para en todo amarte y servir
Enciéndeme y deja arder donde haga falta
Enciéndeme y déjame ser tu luz
Y así poder llevarte hasta todas las almas
Saciar la sed que tienes tú, desde la cruz
Hoy quisiera, madre poner todo en tu presencia
Darme hasta gastarme, decirle que si
Hoy te pido madre, que dejes mi puerta abierta
Para en todo amarle y servir
Enciéndeme y déjame arder donde haga falta
Enciéndeme y déjame ser tu luz
Y así poder llevarte hasta todas las almas
Saciar la sed que tienes tu, desde la cruz
Enciéndeme y déjame arder donde haga falta
Enciéndeme y déjame ser tu luz
Y así poder llevarte hasta todas las almas
Saciar la sed que tienes Tu desde la cruz
''');
    Song songGeneral29 = Song('Titamande Mulungu', '''
Titamande mulungu 
Titamande dzina lao loyerayera
Titamande Yesu khristu mulungu ndi munthu pamodzi
Titamande Dzina la yesu
Titamande mtima wao woyerayera 
Titamande Magazi ake oyerayera.
Titamande Yesu m'sakrament Loyera la ukaristia
Titamande amai amulungu, Maria woyerayera
Titamande Maria woyera, wopanda tchimo lobadwa nalo
Titamande Maria wokweza mwaulemu kumwamba
Titamande dzina la Maria, Amayi ndi Virgo
Titamande Yosefe woyera, mwamuna wao woyereyera
Titamande Mulungu chifukwa cha angelo ao ndi oyera ao
''');
    Song songGeneral30 = Song('Wo zwei', '''
Wo zwei oder drei,
in meinem Namen versammelt sind,
da bin ich mitten unter ihnen.  (x2)
''');
    Song songGeneral31 = Song('Let your living water', '''
Let your living water, 
flow over my soul.
let your Holy Spirit come
and take control,
every situation that has troubled my mind,
all my cares and burden unto you I roll.

Jesus, Jesus. Je-e-e-sus.
Father, Father, Fa- a- ather.
Spirit, Spirit, Spi-i-rit.

Come now holy Spirit and take control.
hold me in your loving arms, 
and make me whole,
wipe away all doubt and fears,
and take my pride,
draw me to your love,
and keep me by your side.

Give your life to Jesus,
let Him take control,
let Him take you in his arms,
and make you whole,
as you give your life to Him,
He will set you free,
you will live and reign 
with him eternally.

Let your living water 
flow over my soul.
let your Holy Spirit 
come and take control,
every situation that has troubled my mind,
all my cares and burdens unto you I roll.
''');
    Song songGeneral32 = Song('I have a dream', '''
I have a dream, a song to sing, 
to help me cope with anything, 
if you see the wonder of a fairy tale, 
you can take the future even if you fail,
I believe in angels, 
something good in everything I see 
I believe in angels,
when I know the time is right for me
I'll cross the stream I have a dream.

I have a dream, a fantasy,
to help me through reality,
and my destination makes it worth the while,
pushing through the darkness still another mile,
I believe in angels,
something good in everything I see,
I believe in angels,
when I know the time is right for me
I'll cross the stream I have a dream,
I'll cross the stream I have a dream.

I have a dream, a song to sing.
to help me cope with anything, 
If you see the wonder of a fairy tale, 
you can take the future even if you fail. 
I believe in angels,
something good in everything I see 
I believe in angels,
when I know the time is right for me 
I'll cross the stream I have a dream 
I'll cross the stream I have a dream
''');
    Song songGeneral33 = Song('Großer Gott (Te Deum)', '''
Großer Gott, wir loben dich,
Herr, wir preisen deine Stärke.
Vor dir neigt die Erde sich
und bewundert deine Werke.
Wie du warst vor aller Zeit,
so bleibst du in Ewigkeit.

Alles, was dich preisen kann,
Kerubim und Serafinen
stimmen dir ein Loblied an;
alle Engel, die dir dienen,
rufen dir stets ohne Ruh
"Heilig. Heilig, heilig" zu. 

''');
    Song songGeneral34 = Song('Canto Della Missione', '''
Andate per le strade in tutto il mondo,
chiamate i miei amici per far festa,
cé un posto per ciascuno alla mia mensa.

Nel vostro camino annunciate il Vangelo, dicendo: e vicino il Regno dei cieli,
guarite i malati, mondate i lebbrosi,
rendete la vita a chi l'ha perduta.

Entrando in una casa donatele la pace,
se c'e chi vi rifiuta e non accoglie il dono,
la pace torni a voi e uscite dalla casa,
scuotendo la polvere dai vostri calzari.

Ecco io vi mando agnelli in mezzo ai lupi,
siate dunque avveduti come sono i serpenti.
Ma liberi e chiari come le colombe,
dovrete sopportare prigioni e tribunali.

Nessuno e più grande del proprio maestro,
ne il servo e più importante del suo padrone,
se hanno odiato me odieranno anche voi,
ma voi non témete: io non vi lascio soli.
''');
    Song songGeneral35 = Song('Mirar La Vida Con Los Ojos Nuevos', '''
Para que nunca comiences un día inútil un día más,
para quien no esté conforme con que la vida es solo pasar,
para aquellos que sentados están buscando su libertad,
para ti que has descubierto que este es el tiempo de comenzar.

Mirar la vida con los ojos nuevos
romper barreras sin mirar atrás
borrar palabras, hacer versos nuevos
decir te quiero, empezar amar, sencillamente ponerse a andar.

Para que jamás los días sean un peso que soportar,
para quien busca en silencio el nombre exacto de la verdad,
para aquellos que perdieron la esperanza de luchar,
para ti que con tus años has descubierto la realidad.

De la mañana ser el pionero,
pintar el cielo descubrir el mar,
que no se escape una pieza del juego sin que tu sepas en donde está,
sencillamente saber buscar.
''');
    Song songGeneral36 = Song('Huracán', '''
Me he hecho tantas preguntas
Intentando entender
Me he lanzado a buscarte
Sin saberte ver
Me he asomado al abismo
Me he atrevido a saltar y caer
Y un huracán
Romperá el cielo desde mi garganta
Gritándote: "¿dónde estás cuando me haces falta?"
Y me han dado respuestas
Pero no sé qué hacer
He prometido seguirte
Sin entender
Y hay un eco en lo hondo
Que me empuja hacia ti
Y aunque sea sin sentirte
Te buscaré
Y un huracán
Romperá el cielo desde mi garganta
Gritándote: "¿dónde estás cuando me haces falta?"
Y un huracán
Romperá el cielo desde mi garganta
Gritándote: "¿dónde estás cuando me haces falta?"
Estoy aquí, en el silencio
Estoy aquí, en este viento
Estoy aquí, soy este trozo de pan
Estoy aquí, en tu lamento
Estoy aquí, en este eco
Estoy aquí, soy este trozo de pan
Y un huracán
Romperá el cielo desde mi garganta
Gritándote: "¿dónde estás cuando me haces falta?"
Y un huracán
Romperá el cielo desde mi garganta
Gritándote: "¿dónde estás cuando me haces falta?"
Estoy aquí (y un huracán)
(Romperá el cielo desde mi garganta) estoy aquí
Estoy aquí (gritándote)
Soy este trozo de pan ("¿dónde estás cuando me haces falta?")
Estoy aquí (y un huracán)
(Romperá el cielo desde mi garganta) estoy aquí
Estoy aquí (gritándote)
Soy este trozo de pan ("¿dónde estás cuando me haces falta?")
Y tu huracán
Romperá el cielo desde mi garganta
Gritándome cuánto me haces falta
''');
    Song songGeneral37 = Song('Diremos que sí', '''
Hay que dar un SI cada día,
en toda ocasión, paso a paso.
hay que dar un SI en las dudas,
en toda ocasión paso a paso.

Cada día diremos que si,
paso a paso diremos que si,
Al Señor (x2).

Abriremos nuevos caminos,
para los que siguen las huellas,
se harán realidad nuestros huellas;
viviendo la fe siempre nueva.

Habrá que llevar la alegría,
y la paz en nuestra mirada,
y con sencillez darlo todo;
poner la confianza en la madre.
''');
    Song songGeneral38 = Song('Hay ángeles volando', '''
Si sentís un murmullo muy cerca de ti,
es un ángel llegando para recibir,
todas tus oraciones y llevarlas al cielo.

Así, abre el corazón y comienza a alabar,
el gozo del cielo todo sobre el altar,
ay un Ángel llegando y bendición en sus manos.

Hay Ángeles volando en este lugar,
en medio del pueblo y junto al altar,
subiendo y bajando en todas las direcciones.

No se si la iglesia subió o si del cielo bajó,
si se que esta lleno de Ángeles de Dios,
porque el mismo Dios está aquí.

Cuando los ángeles pasan la iglesia se alegra,
ella canta, ella llora, ríe y congrega,
enfrenta el infierno y disipa el mal.

Siente la brisa del vuelo de tu Ángel ahora,
comienza hermano pues esta es tu hora,
la bendición llegó y te la vas a llevar.
''');
    Song songGeneral39 = Song('Lass uns miteinander', '''
Lasst uns miteinander,
lasst uns miteinander
singen, loben, danken dem Herrn.

Singen, loben, danken dem Herrn,
singen, loben, danken dem Herrn,
singen, loben, danken dem Herrn,
singen, loben, danken dem Herrn.
''');
    Song songGeneral40 = Song('Mimina Neema', '''
1. Mimina, kama vile zilivyojaa juu, 
   Mimina ziteremshe tuzipokee, Bwana

   Mimina neema zako, mimina, kati yetu, 
   Mimina neema tele, mimina, Mungu wetu, 
   Mimina leo neema nyingi mimina, tufurahi 
   Mimina, Bwana mimina, 
   leo mimina ee Bwana mimina.  
   Mimina neema zako, mimina, kati yetu, 
   Mimina neema tele, mimina, Mungu wetu, 
   Mimina leo neema nyingi mimina, tufurahi 
   Mimina, Bwana mimina,
   leo mimina neema mimina  

2. Mimina, ulivyomimina kwa Abrahamu, 
   Mimina, uwamiminiavyo wamchao, Bwana

3. Mimina, tujae nguvu za kukutukuza, 
   Mimina, tukazieneze sifa zako, Bwana
''');
    Song songGeneral41 = Song('Von guten Mächten', '''
Von guten Mächten wunderbar geborgen,
behütet und getröstet, wunderbar,
so will ich diese Tage mit euch leben
und mit euch gehen in ein neues Jahr.

Von guten Mächten wunderbar geborgen,
erwarten wir getrost, was kommen mag.
Gott ist bei uns am Abend und am Morgen
und ganz gewiss an jedem neuen Tag. 
''');
    Song songGeneral42 = Song('There shall be showers of blessing', '''
There shall be showers of blessing,
this is the promise of love.
there shall be seasons refreshing,
sent from the savior above.

Showers of blessing, 
showers of blessings we need (x2)
mercy drops round us are falling,
but for the showers we plead.

There shall be showers of blessing,
precious reviving again,
over the hills and the valleys,
sound of abundance of rain.

There shall be showers of blessing,
send them upon us O Lord,
grant to us now a refreshing,
come and now honour thy word.

There shall be showers of blessing. 
oh that today they might fall,
now as to God we're confessing,
now as on Jesus we call.
''');
    Song songGeneral43 = Song('Canticle of Daniel', '''
Bless the Lord all you works of the Lord
Praise him exalt him forever!
 
Sun and moon, bless the Lord.
Stars of heaven, bless the Lord.
Speeding light, bless the Lord.
Praise him exalt him forever!
 
Seas and rivers, bless the Lord.
Birds of the air, bless the Lord.
Beasts and cattle, bless the Lord.
Praise him exalt him forever!
 
Young men and maidens, bless the Lord.
Sons of men, bless the Lord.
Servants of the lord, bless the Lord.
Praise him exalt him forever!
 
Showers and dew, bless the Lord.
Cold and chill, bless the Lord.
Storms and winds, bless the Lord.
Praise him exalt him forever!
 
Fire and heat, bless the Lord.
Dew and rain, bless the Lord.
Frost and snow, bless the Lord.
Praise him exalt him forever!
 
Nights and days, bless the Lord.
Lightland darkness, bless the Lord.
Let all season, bless the Lord.
Praise him exalt him forever!
 
Priests of the Lord, bless the Lord.
Spirits of the just, bless the Lord.
Humble men and women, bless the Lord.
Praise him exalt him forever!
''');
    Song songGeneral44 = Song("You've got a friend", '''
When you're down and troubled
And you need some lovin' care
And nothin', nothin' is goin' right
Close your eyes and think of me
And soon I will be there
To brighten up even your darkest night
You just call out my name
And you know, wherever I am
I'll come runnin'
To see you again
Winter, spring, summer or fall
All you have to do is call
And I'll be there
You've got a friend
If the sky above you
Grows dark and full of clouds
And that old north wind begins to blow
Keep your head together
And call my name out loud
Soon you'll hear me knockin' at your door
You just call out my name
And you know, wherever I am
I'll come runnin', runnin', yeah, yeah
To see you again
Winter, spring, summer or fall
All you have to do is call
And I'll be there, yes, I will
Now, ain't it good to know that you've got a friend
When people can be so cold?
They'll hurt you, yes, and desert you
And take your soul if you let them
Oh, but don't you let them
You just call out my name
And you know, wherever I am
I'll come runnin', runnin', yeah, yeah
To see you again
Winter, spring, summer or fall
All you have to do is call
And I'll be there, yes, I will
You've got a friend
You've got a friend
Ain't it good to know you've got a friend
Ain't it good to know, ain't it good to know
Ain't it good to know
You've got a friend
Oh, yeah, now, you've got a friend
Yeah baby, you've got a friend
Oh, yeah, you've got a friend
''');
    Song songGeneral45 = Song('Alles meinem Gott zu Ehren (Te Deum)', '''
Alles meinem Gott zu Ehren,
in der Arbeit in der Ruh!
Gottes Lob und Ehr zu mehren,
ich verlang und alles tu.
Meinem Gott nur will ich geben
Leib und Seel, mein ganzes Leben.
Gib, o Jesu, Gnad dazu;
gib, o Jesu, Gnad dazu.

Alles meinem Gott zu Ehren,
alle Freude, alles Leid!
Weiß ich doch, Gott wird mich lehren,
was mir dient zur Seeligkeit.
Gott allein wird Frieden schenken,
seines Volkes treu gedenken.
Hilf, o Jesu, guter Hirt;
hilf, o Jesu, guter Hirt.
''');
    Song songGeneral46 = Song('Tu es la au cœur de nos vies', '''
Tu es la au cœur de nos vies
Et c'est toi qui nous fait vivre
Tu es la au cœur de nos vies
Bien vivant, ô Jésus-christ
Dans le secret de nos tendresses
(Tu es là)
Dans les matins de nos promesses
(Tu es là)
Dans nos cœurs tout remplis d'orages
(Tu es là)
Dans tous les ciels de nos voyages
(Tu es là)
En plein milieu de nos tempêtes
(Tu es là)
Dans la musique de nos fêtes
(Tu es là)
''');
    Song songGeneral47 = Song('Mchanganyo', '''
Mchanganyo mchanganyo Bwana Yesu amekataa *2

1. Kiburi kidogo unaweka, kanisani nako humo humo
   Dharau kidogo unaweka, kanisani nako humo humo
   Mchanganyo mchanganyo humo humo Bwana Yesu amekataa
   Uwongo kidogo unaweka, kanisani nako humo humo
   Fitina kidogo unaweka, kanisani nako humo humo
   Mchanganyo mchanganyo humo humo Bwana Yesu amekataa

2. Uchawi kidogo unaweka ...
   Hirizi kidogo unaweka...
   Mchanganyo mchanganyo humo humo Bwana Yesu amekataa 
   Ulevi kidogo unaweka ...
   Ugomvi kidogo unaweka...

3. Uchoyo kidogo unaweka...
   Ulafi kidogo unaweka ...
   Mchanganyo mchanganyo humo humo Bwana Yesu amekataa
   Kinyongo kidogo unaweka...
   Tamaa kidogo unaweka...
   Mchanganyo mchanganyo humo humo Bwana Yesu amekataa

4. Suria kidogo unaweka ...
   Na wizi kidogo unaweka...
   Mchanganyo mchanganyo humo humo Bwana Yesu amekataa
   Kimini kidogo unavaa...
   Na nguo za kubana unavaa...

5. Dhuluma kidogo unafanya. . 
   Utoaji wa mimba unafanya...
   Mchanganyo mchanganyo humo humo Bwana Yesu amekataa
   Anasa kidogo unafanya...
   Uzinzi kidogo unafanya...
   Mchanganyo mchanganyo humo humo Bwana Yesu amekataa
''');
    Song songGeneral48 = Song('We are the world', '''
There comes a time,
when we heed a certain call,
when the world must come together as one.
There are people dying,
and it's time to lend a hand to life,
the greatest gift of all.
 
We can't go on,
pretending day by day,
that someone, 
somewhere will soon make a change.
We are all part of
God's great big family,
and the truth, you now, 
love is all we need. 
 
We are the world, 
we are the children;
we are the ones 
who make a brighter day,
so let's start giving.
There's a choice we are making,
we are saving our own lives;
It's true we'll make a better day,
just you and me.
 
Send them your hearts
so they'll know that someone cares,
and their lives will be
stronger and free.
as God has shown us,
by turning stones to bread,
so we all must lend a helping hand.
 
When it's down and out there seems no hope at all;
but when we just believe 
there is no way we can fall.
oh! Let us realize, Oh! 
that the change can only come,
when we stand together as one.
''');
    Song songGeneral49 = Song('Samuel', '''
Samuel!  Samuel!  Samuel!  Samuel!

La mia notte non finisce mai
e la luce non si spenge quasi mai:
non ti avevo conosciuto,
ma sentivo la tua voce.
Ai miei sogni ho detto: “siete voi
che túrbate la mia vita inútilmente”
“forse no, non siamo noi,
é un altro che ti chiama”.

Ho capito eri tu Signore
e ti ho detto: “parla, ecco io ti ascolto”
e così ti ho conosciuto
ho sentito la tua voce.

Tu sei mio da quando ti creai
la mia luce cammina insieme a te
va nel mondo con amore
fa sentiré la mia voce

“Se dovrai soffrire in .ome mio
ti darò la mia parola in quel momento;
il mio spirito tu guida,
io ti porto tra le mani”
''');
    Song songGeneral50 = Song('La Primavera', '''
Todo vuelve a ser posible
el gran invierno puede acabarse

Todo vuelve a ser posible
el gran invierno puede acabarse

La primavera ha estallado
en el corazón del hijo del hombre

La primavera ha estallado
en el corazón del hijo del hombre.
''');
    Song songGeneral51 = Song('Blowing In The Wind', '''
How many roads,
must a man walk down,
before you can call him a man?
Yes, and how many seas must a white dove sail,
before she sleeps in the sand?
How many times must the cannon balls fly
before they're forever banned?
 
The answer my friend,
is blowing in the wind,
the answer is blowing in the wind.
 
How many times must a man look up,
before he can see the sky?
Yes and how many ears 
must one man have,
before he can hear peoples cry?
How many deaths will it take till he knows,
that too many people have died?
 
How many years can a mountain exist.
before it's washed to the sea?
Yes and how many years 
can some people exist,
before they're allowed to be free?
How many times can a man turn his head,
and pretend that he just doesn't see.
''');
    Song songGeneral52 = Song('Canzone Di San Damiano', '''
Ogni uomo semplice porta in cuore un sogno:
con amore e umiltà potrà costruirlo,
se con fede tu saprai vivere umilmente,
più felice tu sarai anche senza niente.

Se vorrai ogni giorno, con il tuo sudore
Una pietra dopo l'altra, alto arriverai.

Nella vita semplice troverai la strada,
che la calma donerà al tuo cuore puro.
E le gioie semplici sono le più belle,
sono quelle che alla fine sono le più grandi.
''');
    Song songGeneral53 = Song('Give me joy in my heart, keep me praising', '''
Give me joy in my heart, keep me praising
Give me joy in my heart, I pray
Give me joy in my heart, keep me praising
Keep me praising 'til the end of day
Sing hosanna, sing hosanna
Sing hosanna to the King of kings
Sing hosanna, sing hosanna
Sing hosanna to the King
Give me peace in my heart, keep me resting
Give me peace in my heart, I pray
Give me peace in my heart, keep me resting
Keep me resting 'til the end of day
Sing hosanna, sing hosanna
Sing hosanna to the King of kings
Sing hosanna, sing hosanna
Sing hosanna to the King
Give me love in my heart, keep me serving
Give me love in my heart, I pray
Give me love in my heart, keep me serving
Keep me serving 'til the end of day
Sing hosanna, sing hosanna
Sing hosanna to the King of kings
Sing hosanna, sing hosanna
Sing hosanna to the King
Give me light in my heart, keep me shining
Give me light in my heart, I pray
Give me light in my heart, keep me shining
Keep me shining 'til the end of day
Sing hosanna, sing hosanna
Sing hosanna to the King of kings
Sing hosanna, sing hosanna
Sing hosanna to the King
''');
    Song songGeneral54 = Song('Sauti ya Yohane ', '''
Sauti ya Yohane ikisikika nyikani, itengenezeni njia Bwana apite. Sauti ya Yohane ikisikika nyikani, yanyosheni mapito Mungu wetu aingie.

1. Fungueni nyoyo zenu Bwana aingie, yanyosheni mapito yake Mungu apite x2.
2. Namtuma mjumbe wangu mbele ya uso wako, atakayeitengeneza njia yako.
3. Sauti yake mtu aliaye nyikani, itengenezeni njia yake Bwana apite x2.
4. Na wote wenye mwili watauona, watauona wokovu wake Mungu wetu x2.

''');
    Song songGeneral55 = Song('All the Ends of the Earth', '''
All the ends of the earth, all you creatures of the sea,
lift up your eyes to the wonders of the Lord.
For the Lord of the earth, the Master of the sea,
has come with justice for the world.
Break into song at the deeds of the Lord,
the wonders God has done in every age.

All the ends of the earth, all you creatures of the sea,
lift up your eyes to the wonders of the Lord.
For the Lord of the earth, the Master of the sea,
has come with justice for the world.
Heaven and earth shall rejoice in your might;
every heart, every nation call you Lord.

All the ends of the earth, all you creatures of the sea,
lift up your eyes to the wonders of the Lord.
For the Lord of the earth, the Master of the sea,
has come with justice for the world.
The Lord has made salvation known,
faithful to the promises of old.
Let the ends of the earth, let the sea
and all it holds make music before our God!
''');
    Song songGeneral56 = Song('Yehwua Zare Kebtohal', '''
Ye musen betir setohal hid hizben mira yilehal,
Indaifera bebereha inditasnanawu yilehal,
Ishi bel guzohin jemir lehizbu anten mertohal,
Wede mawersachew midir, yizehachew hid yilehal.

Yehwua zare kebtohal
Kehizbu mehal mertohal
Gilgelochen tebotochen
Begochen tebik yilahal (x2)

Ante tamagn agelgay begeta des yibeleh,
Yemisgana mezmur zemir kibir siti leamlaki, 
Ketenakibet sifira kef adirgo zare mertohal, 
Ined Dawit kebtohal beftu akumohal.

Menfesun azimbolial melktengnaye,
Anten zare anstoal bezeyitum kebtohal, 
Lije hoy minim atfra kantegar negn yilehal,
Ine wedemazih  sifira melikten adirs yilehal,

Inde Simon Petros iwedahalehu yilehal,
Meskelun yizehi teketel irsu nasu yiredahal,
Guzohin jemrehal wede hula ati yilehal,
Melkten satastelalif inde Yonas atun yilehal.
''');
    Song songGeneral57 = Song('Vocazione', '''
Era un giorno come tanti altri,
e quel giorno Lui passo,
era un Uomo come tutti gli altri,
e passando mi chiamò.
Come lo sapesse che il mio nome,
era proprio quello,
come mai vedesse proprio me,
nella sua vita non lo so,
era un giorno come tanti altri,
e quel giorno mi chiamò.

Tu Dio che conosci il nome mio,
fa che ascoltando la Tua voce,
Io ricordi dove porta la mia strada.
Nella vita all'incontro con Te.

Era un'alba triste e senza vita,
e qualcuno mi chiamò.
Era un Uomo come tanti altri,
me la voce quella no.
Quante volte un uomo,
con il nome giusto mi ha chiamata,
una volta sola l'ho sentito,
pronunciare con amore,
era un Uomo come nessun altro,
e quel giorno mi chiamò.
''');
    Song songGeneral58 = Song('Un nuevo sitio disponed', '''
Un nuevo sitio disponed,
para un amigo más,
un poquitín que os estrechéis,
y se podrá sentar,
para eso sirve la amistad,
si llega la ocasión,
hablémosle con libertad,
y con el corazón,
Él con su amor nos pagará
y alegrará la reunión.

Un nuevo sitio disponed,
para un amigo más,
un poquitín que os estrechéis,
y se podrá sentar,
para eso sirve la amistad,
para estar en reunión,
hablémosle con libertad,
y con el corazón,
El con su amor nos pagará,
y alegrará la reunión.

La puerta siempre abierta,
la luz siempre encendida (x2)

Y cuando llegue el huésped,
no preguntéis quien es,
no, no, no…(x2)

Y corre tú hacia él,
con tu mano extendida,
y corre tu hacia él,
con tu amplio sonreír,
gritando viva, viva y viva…(x2)
Que viva y viva , que viva
la amistad Verdad!
y viva, y viva….
''');
    Song songGeneral59 = Song('Cha kutumaini sina', '''
Cha kutumaini sina, 
ila damu yake Yesu,
sina wema wa kutosha 
dhambi zangu kuziosha.

Kwake Yesu nasimama 
ndiye mwamba ni salama (x3)

Njia yangu iwe ndefu, 
yeye hunipa wokovu,
mawimbi yakinipiga, 
nguvu zake ndizo nanga.

Damu yake na sadaka, 
nategemea daima,
yote chini ya kiisha, 
mwokozi atanitosha.

Nikiitwa ukumuni,
moyoni nina amani,
nikivikwa haki yangu,
sina hofu mbele zake.
''');
    Song songSaintJoshep1 = Song('José Carpintero', '''
José Carpintero, modelo de obrero,
modelo de amor;
de amor a María, de amor al Señor.
bendice a tu pueblo y llévalo a Dios.


Viviste del fecundo trabajo de tus manos;
obrero silencioso, humilde y buen San José.
en tu jardín florece y crece con cuidado,
Jesús de Nazareth.

Creíste en el misterio sublime de María,
misterio de Dios hombre que ella iba a dar a luz.
como lo dijo el ángel, tú mismo le pondrás,
el nombre de Jesús.

Tu corazón de padre proteja nuestra Iglesia,
y traiga a las familia el don de la unidad.
que todos los que viven de su trabajo,
obtengan la justicia y el pan.
''');
    Song songSaintJoshep2 = Song('San José, porque fue varón', '''
Porque fue varón justo,
le amó el Señor,
y dio el ciento por uno
su labor.

Humilde magisterio,
bajo el que Dios aprende;
que diga, si lo entiende,
quién sepa de misterio,
si Dios en cautiverio,
se queda en aprendiz,
aprende aquí la casa de David.

Sencillo, sin historia,
de espalda a los laureles,
escalas los niveles,
más altos de la gloria,
qué asombro, hacer memoria,
y hallarte a tu ascensión,
tu hogar, tu oficio y Dios como razón.

Y, pues que el mundo entero,
te mira y se pregunta,
di tú como se junta,
ser santo y carpintero,
la gloria y el madero,
la gracias y el afán,
tener propicio a Dios,
y escaso el pan.
''');
    Song songSaintJoshep3 = Song('Hombre carpintero', '''
Hombre carpintero,
que no dejas de soñar,
tu oficio es de sueños,
para hacerlos realidad.
Hombre carpintero,
es tu vida fabricar:
remos a las barcas
que se lanzan a la mar.

Hombre, que has sabido callar
para hablar con el Amor;
hombre, que has sabido callar,
y has dejado hablar a Dios.

Hombre, que en la lucha y
en la cruel contradicción,
con tu limpios ojos
has sabido ver a Dios.
Hombre, que en la noche,
has sabido caminar
a patrias extrañas,
en silencio y soledad.

Hombre, que has creído
en la palabra de Dios,
cuando en María
Él su Verbo encarnó.
Hombre, que en tus manos
todo un Dios se abandonó,
para enseñarnos
que de un padre es su amor.
''');
    Song songSaintJoshep4 = Song('La canción del carpintero', '''
Mientras te acuno en mis brazos
entre lágrimas de amor
es que a veces no comprendo 
este pobre corazón 
y pensar que había pensado
abandonarla en secreto
de no haber sido por el ángel
y de lo que dijo en aquel sueño 
si todavía me cuesta creer
que se haya fijado en mi el cielo
espero sepas comprenderme
yo sólo soy un pobre carpintero 
Aquí cuidando de tu madre
y contigo aquí en mis brazos
soy más feliz que el hombre más
feliz que la tierra haya pisado
pero está tan fría esta noche
estamos tan lejos de casa

¡Ay Dios, qué raros son tus planes!
dije a la noche estrellada. 
Hubiera querido darte un palacio y no este agujero,
pero tú sabes, no hay lugar para el hijo del carpintero 
Y te cantaré canciones 
de nuestro pueblo y su cansancio
inclinado ante la cuna 
que haré con mis propias manos 
cuando crezcas, cada noche te contaré
historias de sembradores,
de semillas, de tierra fértil,
de ovejas perdidas y de pastores;
de un hombre que encontró un tesoro
y por él lo dejó todo
y así sabrás cuánto te quiero...
Y que aquel hombre es este carpintero 
Y te veré crecer despacio
en cada primavera,
te hablaré de nuestro Dios
te enseñaré lo que pueda 
Éste, el hombre que soy
es todo lo que puedo darte
no tengo oro, ni plata
sólo un corazón para amarte 
El que sólo entiende
de clavos y madera
el que por ti daría,
daría su vida entera 
Es que por ti daría... mi vida entera.
''');
    Song songAgnusDei1 = Song('Agnus Dei', '''
Agnus Dei, qui tollis peccatta mundi, 
misere nobis (2)
Agnus Dei, qui tollis peccatta mundi,
dona nobis pacem.
''');
    Song songAgnusDei2 = Song('Kankhosa kamulungu', '''
Kankhosa kamulungu amene
mumachotsa machimo adziko lapansi
mutichitire chisoni x2
kankhosa kamulungu amene
mumachotsa machimi adziko lapansi
mutipatse mtendere.
''');
    Song songAgnusDei3 = Song('Lamb of God', '''
Oh Lamb of God,
you take away the sins of the world.
(Have mercy) have mercy on us.

Oh Lamb of God,
you take away the sins of the world.
(Have mercy) have mercy of us.

Oh Lamb of God,
you take away the sins of the world. 
(Oh Grant us) Oh grant us your peace.
''');
    Song songAgnusDei4 = Song('Cordero de Dios', '''
Cordero de Dios,
que quitas el pecado del mundo,
ten piedad de nosotros.

Cordero de Dios,
que quitas el pecado del mundo,
ten piedad de nosotros.

Cordero de Dios,
que quitas el pecado del mundo,
danos la paz.
''');
    Song songAgnusDei5 = Song('Mwana kondoo', '''
Mwana kondoo wa Mungu, 
tuhurumie leo (x2)
Tuhurumie, tuhurumie, tuhurumie,
tuhurumie,
Mwana kondoo wa Mungu,
tuhurumie leo.

Mwana kondoo wa Mungu,
tuhurumie leo.(x2)
Tuhurumie, tuhurumie, tuhurumie,
tuhurumie,
Mwana kondoo wa Mungu,
tuhurumie leo.

Mwana kondoo wa Mungu,
tujalie amani (x2)
Tujalie, tujalie, tujalie tujalie
Mwana kondoo wa Mungu,
tujalie amani.
''');
    Song songKyrieEleison1 = Song('Bwana Utuhurumie (Misa Fadhili)', '''
[t] Bwana Bwana utuhurumie ee Bwana
[w] Bwana (Bwana) Bwana, Bwana utuhurumie
Kristu Kristu Krsitu utuhurumie ee Krsitu -
[t] Bwana Bwana utuhurumie ee Bwana -
''');
    Song songKyrieEleison2 = Song('Bwana Utuhurumie (Misa Amecea)', '''
1. [ s/a ] { Bwana utuhurumie (ee Bwana)
   [ w ] Bwana utuhurumie } *2
2. [ t/b ] { Kristu utuhurumie (ee Kristu)
   Kristu utuhurumie } *2
3. [ s/a ] { Bwana utuhurumie (ee Bwana)
   Bwana utuhurumie } *2
''');
    Song songKyrieEleison3 = Song('Bwana Bwana', '''
S/A Bwana bwana
ALL hutuhurumie
ALL Bwana    x2       hutuhurumie
Kristo kristo………..  x2
Bwana bwana……… x2
 
Ngwe kyala utupele ikisa aaa
Bass: Panongwa!
Sap: Tikonangire*3
 
Afumu mutichitire lusungu uuu
Chifukwa tamunangirani….
 
Ambuye mutichitire chisoni iii
Chifukwa takuchimwirani….
''');
    Song songKyrieEleison4 = Song('Kyrie', '''
Kyrie, Kyrie eleison (x2)
Kriste, Kriste eleison (x2)
Kyrie, Kyrie eleison (x2)
''');
    Song songKyrieEleison5 = Song('Utuhurumie Ee Bwana (Misa Centinary)', '''
1. [s/a:] { Utuhurumie ee Bwana ee
   [w:] Ee Bwana (tuhurumie) ee Bwana
   [s/a:] Utuhurumie ee Bwana ee
   [b:] eeh eeh - [w:] ee Bwana
   [t:] eee eeh - [w:] ee Bwana } *2

2. [s:] Ee Kristu (tuhurumie*2) utuhurumie
   [a:] Ee Kristu tuhurumie, tuhurumie
   Ee Kristu tuhurumie, ee Kristu ee Kristu
   Ee Kristu tuhurumie
   [b:] Ee Kristu, ee Kristu *2
   Ee Kristu utuhurumie *2
   [t:] Ee Kristu tuhurumie tuhurumie
   Eeh eeh, Ee Kristu tuhurumie

3. Utuhurumie ee Bwana ee
''');
    Song songKyrieEleison6 = Song('Kyrie eleison', '''
Look around you, can you see?
Times are troubled,
people grieve. 
See the violence, 
feel the hardness,
all my people weep with me.
 
Kyrie eleison,  
Christe eleison,
Kyrie eleison.

Walk among them,
I'll go with you. 
Reach out to them,
with my hands. 
Suffer with me, 
and together,
we will serve  them, 
help them stand.
 
Forgive us Father,
hear our prayer. 
We would walk with you,
anywhere.
Through your suffering, 
with forgiveness,
take your life, into the world.
''');
    Song songKyrieEleison7 = Song('Mukama Tusasiire', '''
Mu-u-kama, Mu-u-kama, Mukama Otusasiire*2
Kri-ii-stu, Kri-ii-stu, Kri-ii-stu Otusasiire*2
Mu-u-kama, Mu-u-kama, Mukama Otusaiire*2
''');

    bookCommunion.songs.addAll([
      songCommunion1,
      songCommunion2,
      songCommunion3,
      songCommunion4,
      songCommunion5,
      songCommunion6,
      songCommunion7,
      songCommunion8,
      songCommunion9,
      songCommunion10,
      songCommunion11,
      songCommunion12,
      songCommunion13,
      songCommunion14,
      songCommunion15,
      songCommunion16,
      songCommunion17,
      songCommunion18,
      songCommunion19,
      songCommunion20,
      songCommunion21,
      songCommunion22,
      songCommunion23,
      songCommunion24,
      songCommunion25,
      songCommunion26,
      songCommunion27,
      songCommunion28,
      songCommunion29,
      songCommunion30,
      songCommunion31,
      songCommunion32,
      songCommunion33,
      songCommunion34,
      songCommunion35,
      songCommunion36,
      songCommunion37,
      songCommunion38,
      songCommunion39,
      songCommunion40,
      songCommunion41,
      songCommunion42,
      songCommunion43,
      songCommunion44,
      songCommunion45,
      songCommunion46,
      songCommunion47,
      songCommunion48,
      songCommunion49,
      songCommunion50,
      songCommunion51,
      songCommunion52,
      songCommunion53,
      songCommunion54,
      songCommunion55,
    ]);

    bookAdvent.songs.addAll([
      songAdvent1,
      songAdvent2,
      songAdvent3,
      songAdvent4,
    ]);

    bookGospelAcclamation.songs.addAll([
      songGospelAcclamation1,
      songGospelAcclamation2,
      songGospelAcclamation3,
      songGospelAcclamation4,
      songGospelAcclamation5,
      songGospelAcclamation6,
      songGospelAcclamation7,
      songGospelAcclamation8,
      songGospelAcclamation9,
    ]);

    bookOurFather.songs.addAll([
      songOurFather1,
      songOurFather2,
      songOurFather3,
      songOurFather4,
      songOurFather5,
      songOurFather6,
      songOurFather7,
    ]);

    bookCreed.songs.addAll([
      songCreed1,
      songCreed2,
      songCreed3,
    ]);

    bookPresentationGifts.songs.addAll([
      songPresentationGifts1,
      songPresentationGifts2,
      songPresentationGifts3,
      songPresentationGifts4,
      songPresentationGifts5,
      songPresentationGifts6,
      songPresentationGifts7,
    ]);

    bookEntrance.songs.addAll([
      songEntrance1,
      songEntrance2,
      songEntrance3,
      songEntrance4,
      songEntrance5,
      songEntrance6,
      songEntrance7,
      songEntrance8,
      songEntrance9,
      songEntrance10,
      songEntrance11,
      songEntrance12,
      songEntrance13,
      songEntrance14,
      songEntrance15,
      songEntrance16,
      songEntrance17,
      songEntrance18,
      songEntrance19,
      songEntrance20,
      songEntrance21,
      songEntrance22,
      songEntrance23,
      songEntrance24,
      songEntrance25,
      songEntrance26,
      songEntrance27,
      songEntrance28,
      songEntrance29,
      songEntrance30,
      songEntrance31,
      songEntrance32,
      songEntrance33,
      songEntrance34,
      songEntrance35,
      songEntrance36,
      songEntrance37,
      songEntrance38,
      songEntrance39,
      songEntrance40,
      songEntrance41,
      songEntrance42,
      songEntrance43,
      songEntrance44,
      songEntrance45,
      songEntrance46,
      songEntrance47,
      songEntrance48,
      songEntrance49,
    ]);

    bookVocationHymns.songs.addAll([
      songVocationHymns1,
      songVocationHymns2,
      songVocationHymns3,
      songVocationHymns4,
      songVocationHymns5,
    ]);

    bookSanctus.songs.addAll([
      songSanctus1,
      songSanctus2,
      songSanctus3,
      songSanctus4,
      songSanctus5,
      songSanctus6,
      songSanctus7,
      songSanctus8,
      songSanctus9,
      songSanctus10,
      songSanctus11,
      songSanctus12,
      songSanctus13,
      songSanctus14,
      songSanctus15,
      songSanctus16,
      songSanctus17,
      songSanctus18,
      songSanctus19,
      songSanctus20,
    ]);

    bookDismissal.songs.addAll([
      songDismissal1,
      songDismissal2,
      songDismissal3,
      songDismissal4,
      songDismissal5,
      songDismissal6,
      songDismissal7,
      songDismissal8,
      songDismissal9,
      songDismissal10,
      songDismissal11,
      songDismissal12,
      songDismissal13,
      songDismissal14,
      songDismissal15,
      songDismissal16,
      songDismissal17,
      songDismissal18,
      songDismissal19,
      songDismissal20,
      songDismissal21,
      songDismissal22,
      songDismissal23,
      songDismissal24,
      songDismissal25,
      songDismissal26,
      songDismissal27,
      songDismissal28,
    ]);

    bookPeace.songs.addAll([
      songPeace1,
      songPeace2,
      songPeace3,
      songPeace4,
      songPeace5,
      songPeace6,
      songPeace7,
      songPeace8,
      songPeace9,
    ]);

    bookAdoration.songs.addAll([
      songAdoration1,
      songAdoration2,
      songAdoration3,
      songAdoration4,
      songAdoration5,
      songAdoration6,
      songAdoration7,
      songAdoration8,
    ]);

    bookPraiseWorship.songs.addAll([
      songPraiseWorship1,
      songPraiseWorship2,
      songPraiseWorship3,
      songPraiseWorship4,
      songPraiseWorship5,
      songPraiseWorship6,
      songPraiseWorship7,
      songPraiseWorship8,
      songPraiseWorship9,
      songPraiseWorship10,
      songPraiseWorship11,
      songPraiseWorship12,
      songPraiseWorship13,
      songPraiseWorship14,
      songPraiseWorship15,
      songPraiseWorship16,
      songPraiseWorship17,
      songPraiseWorship18,
      songPraiseWorship19,
      songPraiseWorship20,
      songPraiseWorship21,
      songPraiseWorship22,
      songPraiseWorship23,
      songPraiseWorship24,
      songPraiseWorship25,
      songPraiseWorship26,
      songPraiseWorship27,
    ]);

    bookPsalms.songs.addAll([
      songPsalms1,
      songPsalms2,
      songPsalms3,
      songPsalms4,
      songPsalms5,
    ]);

    bookChristmas.songs.addAll([
      songChristmas1,
      songChristmas2,
      songChristmas3,
      songChristmas4,
      songChristmas5,
      songChristmas6,
      songChristmas7,
      songChristmas8,
      songChristmas9,
      songChristmas10,
      songChristmas11,
      songChristmas12,
      songChristmas13,
      songChristmas14,
      songChristmas15,
      songChristmas16,
      songChristmas17,
      songChristmas18,
      songChristmas19,
      songChristmas20,
      songChristmas21,
      songChristmas22,
      songChristmas23,
      songChristmas24,
      songChristmas25,
      songChristmas26,
      songChristmas27,
      songChristmas28,
      songChristmas29,
      songChristmas30,
      songChristmas31,
      songChristmas32,
      songChristmas33,
      songChristmas34,
      songChristmas35,
      songChristmas36,
      songChristmas37,
      songChristmas38,
      songChristmas39,
      songChristmas40,
    ]);

    bookGlory.songs.addAll([
      songGlory1,
      songGlory2,
      songGlory3,
      songGlory4,
      songGlory5,
      songGlory6,
      songGlory7,
      songGlory8,
      songGlory9,
      songGlory10,
      songGlory11,
      songGlory12,
      songGlory13,
      songGlory14,
      songGlory15,
    ]);

    bookMary.songs.addAll([
      songMary1,
      songMary2,
      songMary3,
      songMary4,
      songMary5,
      songMary6,
      songMary7,
      songMary8,
      songMary9,
      songMary10,
      songMary11,
      songMary12,
      songMary13,
      songMary14,
      songMary15,
      songMary16,
      songMary17,
      songMary18,
      songMary19,
      songMary20,
      songMary21,
      songMary22,
      songMary23,
      songMary24,
      songMary25,
      songMary26,
      songMary27,
      songMary28,
      songMary29,
      songMary30,
      songMary31,
      songMary32,
      songMary33,
      songMary34,
      songMary35,
      songMary36,
      songMary37,
      songMary38,
      songMary39,
      songMary40,
      songMary41,
      songMary42,
      songMary43,
      songMary44,
      songMary45,
      songMary46,
    ]);

    bookPenitencialRite.songs.addAll([
      songPenitencialRite1,
    ]);

    bookHolySpirit.songs.addAll([
      songHolySpirit1,
      songHolySpirit2,
      songHolySpirit3,
      songHolySpirit4,
      songHolySpirit5,
      songHolySpirit6,
      songHolySpirit7,
      songHolySpirit8,
      songHolySpirit9,
      songHolySpirit10,
      songHolySpirit11,
      songHolySpirit12,
    ]);

    bookWeddingHymns.songs.addAll([
      songWeddingHymns1,
      songWeddingHymns2,
      songWeddingHymns3,
      songWeddingHymns4,
    ]);

    bookBibleProcession.songs.addAll([
      songBibleProcession1,
      songBibleProcession2,
      songBibleProcession3,
      songBibleProcession4,
    ]);

    bookThanksgiving.songs.addAll([
      songThanksgiving1,
      songThanksgiving2,
      songThanksgiving3,
      songThanksgiving4,
      songThanksgiving5,
      songThanksgiving6,
      songThanksgiving7,
      songThanksgiving8,
      songThanksgiving9,
      songThanksgiving10,
      songThanksgiving11,
      songThanksgiving12,
    ]);

    bookOffertory.songs.addAll([
      songOffertory1,
      songOffertory2,
      songOffertory3,
      songOffertory4,
      songOffertory5,
      songOffertory6,
      songOffertory7,
      songOffertory8,
      songOffertory9,
      songOffertory10,
      songOffertory11,
      songOffertory12,
      songOffertory13,
      songOffertory14,
      songOffertory15,
      songOffertory16,
      songOffertory17,
      songOffertory18,
      songOffertory19,
      songOffertory20,
      songOffertory21,
      songOffertory22,
      songOffertory23,
      songOffertory24,
      songOffertory25,
      songOffertory26,
      songOffertory27,
      songOffertory28,
      songOffertory29,
      songOffertory30,
      songOffertory31,
      songOffertory32,
      songOffertory33,
      songOffertory34,
      songOffertory35,
      songOffertory36,
      songOffertory37,
      songOffertory38,
      songOffertory39,
      songOffertory40,
      songOffertory41,
      songOffertory42,
      songOffertory43,
      songOffertory44,
      songOffertory45,
      songOffertory46,
      songOffertory47,
      songOffertory48,
      songOffertory49,
      songOffertory50,
      songOffertory51,
    ]);

    bookLentHolyWeekEaster.songs.addAll([
      songLentHolyWeekEaster1,
      songLentHolyWeekEaster2,
      songLentHolyWeekEaster3,
      songLentHolyWeekEaster4,
      songLentHolyWeekEaster5,
      songLentHolyWeekEaster6,
      songLentHolyWeekEaster7,
      songLentHolyWeekEaster8,
      songLentHolyWeekEaster9,
      songLentHolyWeekEaster10,
      songLentHolyWeekEaster11,
      songLentHolyWeekEaster12,
      songLentHolyWeekEaster13,
      songLentHolyWeekEaster14,
      songLentHolyWeekEaster15,
      songLentHolyWeekEaster16,
      songLentHolyWeekEaster17,
      songLentHolyWeekEaster18,
      songLentHolyWeekEaster19,
      songLentHolyWeekEaster20,
      songLentHolyWeekEaster21,
      songLentHolyWeekEaster22,
      songLentHolyWeekEaster23,
      songLentHolyWeekEaster24,
      songLentHolyWeekEaster25,
      songLentHolyWeekEaster26,
      songLentHolyWeekEaster27,
      songLentHolyWeekEaster28,
      songLentHolyWeekEaster29,
      songLentHolyWeekEaster30,
      songLentHolyWeekEaster31,
      songLentHolyWeekEaster32,
      songLentHolyWeekEaster33,
      songLentHolyWeekEaster34,
      songLentHolyWeekEaster35,
      songLentHolyWeekEaster36,
    ]);

    bookGeneral.songs.addAll([
      songGeneral1,
      songGeneral2,
      songGeneral3,
      songGeneral4,
      songGeneral5,
      songGeneral6,
      songGeneral7,
      songGeneral8,
      songGeneral9,
      songGeneral10,
      songGeneral11,
      songGeneral12,
      songGeneral13,
      songGeneral14,
      songGeneral15,
      songGeneral16,
      songGeneral17,
      songGeneral18,
      songGeneral19,
      songGeneral20,
      songGeneral21,
      songGeneral22,
      songGeneral23,
      songGeneral24,
      songGeneral25,
      songGeneral26,
      songGeneral27,
      songGeneral28,
      songGeneral29,
      songGeneral30,
      songGeneral31,
      songGeneral32,
      songGeneral33,
      songGeneral34,
      songGeneral35,
      songGeneral36,
      songGeneral37,
      songGeneral38,
      songGeneral39,
      songGeneral40,
      songGeneral41,
      songGeneral42,
      songGeneral43,
      songGeneral44,
      songGeneral45,
      songGeneral46,
      songGeneral47,
      songGeneral48,
      songGeneral49,
      songGeneral50,
      songGeneral51,
      songGeneral52,
      songGeneral53,
      songGeneral54,
      songGeneral55,
      songGeneral56,
      songGeneral57,
      songGeneral58,
      songGeneral59,
    ]);

    bookSaintJoshep.songs.addAll([
      songSaintJoshep1,
      songSaintJoshep2,
      songSaintJoshep3,
      songSaintJoshep4,
    ]);

    bookAgnusDei.songs.addAll([
      songAgnusDei1,
      songAgnusDei2,
      songAgnusDei3,
      songAgnusDei4,
      songAgnusDei5,
    ]);

    bookKyrieEleison.songs.addAll([
      songKyrieEleison1,
      songKyrieEleison2,
      songKyrieEleison3,
      songKyrieEleison4,
      songKyrieEleison5,
      songKyrieEleison6,
      songKyrieEleison7,
    ]);

    _bookBox.putMany([
      bookCommunion,
      bookAdoration,
      bookAdvent,
      bookAgnusDei,
      bookBibleProcession,
      bookChristmas,
      bookCreed,
      bookDismissal,
      bookEntrance,
      bookGeneral,
      bookGlory,
      bookGospelAcclamation,
      bookHolySpirit,
      bookKyrieEleison,
      bookLentHolyWeekEaster,
      bookMary,
      bookOffertory,
      bookOurFather,
      bookPeace,
      bookPenitencialRite,
      bookPraiseWorship,
      bookPresentationGifts,
      bookPsalms,
      bookSaintJoshep,
      bookSanctus,
      bookThanksgiving,
      bookVocationHymns,
      bookWeddingHymns
    ]);
  }
}
