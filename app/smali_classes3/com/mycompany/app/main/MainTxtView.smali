.class public Lcom/mycompany/app/main/MainTxtView;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainTxtView$LoadTask;
    }
.end annotation


# static fields
.field public static final synthetic X2:I


# instance fields
.field public A2:Z

.field public B2:I

.field public C1:Lcom/mycompany/app/view/MyMainRelative;

.field public C2:Z

.field public D1:Lcom/mycompany/app/view/MyButtonImage;

.field public D2:Lcom/mycompany/app/view/MyPopupMenu;

.field public E1:Lcom/mycompany/app/view/MyButtonImage;

.field public E2:Lcom/mycompany/app/dialog/DialogSaveSource;

.field public F1:Lcom/mycompany/app/view/MyButtonImage;

.field public F2:Lcom/mycompany/app/dialog/DialogSeekBright;

.field public G1:Lcom/mycompany/app/view/MyButtonImage;

.field public G2:Lcom/mycompany/app/dialog/DialogSeekText;

.field public H1:Lcom/mycompany/app/view/MyButtonImage;

.field public H2:Lcom/mycompany/app/dialog/DialogSeekAudio;

.field public I1:Lcom/mycompany/app/view/MyRoundItem;

.field public I2:Lcom/mycompany/app/dialog/DialogSetTts;

.field public J1:Lcom/mycompany/app/view/MyRecyclerView;

.field public J2:Z

.field public K1:Lcom/mycompany/app/view/MyManagerLinear;

.field public K2:I

.field public L1:Lcom/mycompany/app/main/MainTxtAdapter;

.field public L2:Ljava/net/HttpURLConnection;

.field public M1:Lcom/mycompany/app/view/MyScrollBar;

.field public M2:Ljava/io/InputStream;

.field public N1:Lcom/mycompany/app/view/MyFadeFrame;

.field public N2:Ljava/io/BufferedReader;

.field public O1:Landroid/widget/RelativeLayout;

.field public O2:Z

.field public P1:Landroid/widget/LinearLayout;

.field public P2:Z

.field public Q1:Landroid/widget/LinearLayout;

.field public Q2:Z

.field public R1:Lcom/mycompany/app/view/MyButtonImage;

.field public R2:Ljava/util/List;

.field public S1:Lcom/mycompany/app/view/MyButtonImage;

.field public S2:I

.field public T1:Lcom/mycompany/app/view/MyButtonImage;

.field public T2:Z

.field public U1:Lcom/mycompany/app/view/MyButtonImage;

.field public final U2:Ljava/lang/Runnable;

.field public V1:Lcom/mycompany/app/view/MyButtonImage;

.field public final V2:Ljava/lang/Runnable;

.field public W1:Lcom/mycompany/app/view/MyButtonImage;

.field public W2:Lcom/mycompany/app/view/MySnackbar;

.field public X1:Lcom/mycompany/app/view/MyButtonImage;

.field public Y1:Lcom/mycompany/app/view/MyButtonImage;

.field public Z1:Lcom/mycompany/app/view/MyButtonImage;

.field public a2:Lcom/mycompany/app/view/MyButtonImage;

.field public b2:Lcom/mycompany/app/view/MyFadeImage;

.field public c2:Lcom/mycompany/app/view/MyCoverView;

.field public d2:Lcom/mycompany/app/view/MyFadeFrame;

.field public e2:Landroid/view/GestureDetector;

.field public f2:Landroid/view/ScaleGestureDetector;

.field public g2:Ljava/lang/String;

.field public h2:Ljava/lang/String;

.field public i2:Ljava/lang/String;

.field public j2:Ljava/util/ArrayList;

.field public k2:Lcom/mycompany/app/main/MainTxtView$LoadTask;

.field public l2:Z

.field public m2:Z

.field public n2:Landroid/speech/tts/TextToSpeech;

.field public o2:F

.field public p2:F

.field public q2:Ljava/lang/String;

.field public r2:Ljava/lang/String;

.field public s2:Ljava/util/ArrayList;

.field public t2:I

.field public u2:Ljava/util/ArrayList;

.field public v2:I

.field public w2:I

.field public x2:Z

.field public y2:I

.field public z2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/main/MainTxtView$35;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTxtView$35;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->U2:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/main/MainTxtView$44;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTxtView$44;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->V2:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void
.end method

.method public static D0(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->L0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 12
    .line 13
    const/high16 v2, 0x3f000000    # 0.5f

    .line 14
    .line 15
    cmpg-float v3, v1, v2

    .line 16
    .line 17
    if-gez v3, :cond_1

    .line 18
    .line 19
    sput v2, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    .line 23
    .line 24
    cmpl-float v1, v1, v3

    .line 25
    .line 26
    if-lez v1, :cond_2

    .line 27
    .line 28
    sput v3, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 29
    .line 30
    :cond_2
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 31
    .line 32
    cmpg-float v3, v1, v2

    .line 33
    .line 34
    if-gez v3, :cond_3

    .line 35
    .line 36
    sput v2, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/high16 v2, 0x40000000    # 2.0f

    .line 40
    .line 41
    cmpl-float v1, v1, v2

    .line 42
    .line 43
    if-lez v1, :cond_4

    .line 44
    .line 45
    sput v2, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 46
    .line 47
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 48
    .line 49
    :try_start_0
    sget v0, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 50
    .line 51
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->o2:F

    .line 52
    .line 53
    sget v1, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 54
    .line 55
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->p2:F

    .line 56
    .line 57
    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 66
    .line 67
    sget v2, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 70
    .line 71
    .line 72
    :cond_5
    sget v0, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 73
    .line 74
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    iget-object p0, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 81
    .line 82
    sget v0, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_6
    sget v0, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 89
    .line 90
    iget v1, p0, Lcom/mycompany/app/main/MainTxtView;->o2:F

    .line 91
    .line 92
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    sget v0, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 99
    .line 100
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->o2:F

    .line 101
    .line 102
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 105
    .line 106
    .line 107
    :cond_7
    sget v0, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 108
    .line 109
    iget v1, p0, Lcom/mycompany/app/main/MainTxtView;->p2:F

    .line 110
    .line 111
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    sget v0, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 118
    .line 119
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->p2:F

    .line 120
    .line 121
    iget-object p0, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    :catch_0
    :cond_8
    :goto_2
    return-void
.end method

.method public static E0(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->R0()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static F0(IILjava/lang/String;)I
    .locals 5

    .line 1
    sub-int v0, p0, p1

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    add-int/lit8 v0, p1, 0x50

    .line 9
    .line 10
    if-lt v0, p0, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    const-string v2, ". "

    .line 14
    .line 15
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/lit8 v3, v2, 0x2

    .line 20
    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    if-le v2, v0, :cond_3

    .line 24
    .line 25
    if-gt v3, p0, :cond_3

    .line 26
    .line 27
    sub-int v2, v3, p1

    .line 28
    .line 29
    if-gt v2, v1, :cond_3

    .line 30
    .line 31
    sub-int p1, p0, v3

    .line 32
    .line 33
    if-ge p1, v4, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return v3

    .line 37
    :cond_3
    const/16 v2, 0x2e

    .line 38
    .line 39
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/lit8 v3, v2, 0x1

    .line 44
    .line 45
    if-le v2, v0, :cond_5

    .line 46
    .line 47
    if-gt v3, p0, :cond_5

    .line 48
    .line 49
    sub-int v2, v3, p1

    .line 50
    .line 51
    if-gt v2, v1, :cond_5

    .line 52
    .line 53
    sub-int p1, p0, v3

    .line 54
    .line 55
    if-ge p1, v4, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    return v3

    .line 59
    :cond_5
    const/16 v2, 0x20

    .line 60
    .line 61
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    add-int/lit8 v2, p2, 0x1

    .line 66
    .line 67
    if-le p2, v0, :cond_7

    .line 68
    .line 69
    if-gt v2, p0, :cond_7

    .line 70
    .line 71
    sub-int p1, v2, p1

    .line 72
    .line 73
    if-gt p1, v1, :cond_7

    .line 74
    .line 75
    sub-int p1, p0, v2

    .line 76
    .line 77
    if-ge p1, v4, :cond_6

    .line 78
    .line 79
    :goto_0
    return p0

    .line 80
    :cond_6
    return v2

    .line 81
    :cond_7
    :goto_1
    return v0
.end method


# virtual methods
.method public final G0()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->P2:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->Q2:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->m2:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainTxtView;->m2:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$43;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainTxtView$43;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_3
    :goto_0
    return v1
.end method

.method public final H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->k2:Lcom/mycompany/app/main/MainTxtView$LoadTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->k2:Lcom/mycompany/app/main/MainTxtView$LoadTask;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/main/MainTxtView$LoadTask;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTxtView$LoadTask;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->k2:Lcom/mycompany/app/main/MainTxtView$LoadTask;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final I0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 28
    return p1
.end method

.method public final J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->D2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->D2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final K0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainTxtView;->l2:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainTxtView;->l2:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final L0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->q2:Ljava/lang/String;

    .line 14
    .line 15
    :try_start_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$28;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainTxtView$28;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/main/MainTxtView$29;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTxtView$29;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method public final M0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->E2:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->F2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->G2:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->H2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->I2:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public final N0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final O0(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->U0()V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x2

    .line 15
    iput p1, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :cond_2
    return-void
.end method

.method public final P0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->U0()V

    .line 10
    .line 11
    .line 12
    :goto_0
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->q2:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->r2:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 25
    .line 26
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 29
    .line 30
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->y2:I

    .line 31
    .line 32
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->z2:I

    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final Q0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->L0()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    :try_start_0
    iget v4, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 19
    .line 20
    if-eq v4, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Lcom/mycompany/app/main/MainTxtView;->I0(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iput v4, p0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 27
    .line 28
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 29
    .line 30
    :cond_1
    iget v4, p0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 31
    .line 32
    iget-object v5, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    if-ltz v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-lt v4, v5, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v5, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    move-object v4, v2

    .line 55
    :goto_1
    if-nez v4, :cond_4

    .line 56
    .line 57
    move-object v4, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    iget-object v4, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 60
    .line 61
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_5

    .line 66
    .line 67
    iput v3, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 68
    .line 69
    iput-boolean v3, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 70
    .line 71
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 72
    .line 73
    iput v3, p0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 74
    .line 75
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 76
    .line 77
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 78
    .line 79
    invoke-virtual {p0, v3, v3}, Lcom/mycompany/app/main/MainTxtView;->Z0(IZ)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    iget v5, p0, Lcom/mycompany/app/main/MainTxtView;->y2:I

    .line 84
    .line 85
    iget v6, p0, Lcom/mycompany/app/main/MainTxtView;->z2:I

    .line 86
    .line 87
    add-int/2addr v5, v6

    .line 88
    iput v5, p0, Lcom/mycompany/app/main/MainTxtView;->y2:I

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_6

    .line 99
    .line 100
    iput v3, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 101
    .line 102
    iput-boolean v3, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 103
    .line 104
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 105
    .line 106
    iput v3, p0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 107
    .line 108
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 109
    .line 110
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 111
    .line 112
    invoke-virtual {p0, v3, v3}, Lcom/mycompany/app/main/MainTxtView;->Z0(IZ)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_6
    iget-object v5, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_7

    .line 123
    .line 124
    iget-object v5, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 125
    .line 126
    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 127
    .line 128
    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->V0()V

    .line 130
    .line 131
    .line 132
    iget-object v5, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 133
    .line 134
    const-string v6, "0"

    .line 135
    .line 136
    invoke-virtual {v5, v4, v3, v2, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_8

    .line 141
    .line 142
    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/main/MainTxtView;->Z0(IZ)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_8
    iput v3, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 147
    .line 148
    iput-boolean v3, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catch_0
    iput v3, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 152
    .line 153
    iput-boolean v3, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 154
    .line 155
    :goto_3
    iget v0, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 156
    .line 157
    if-nez v0, :cond_9

    .line 158
    .line 159
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 160
    .line 161
    iput v3, p0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 162
    .line 163
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 164
    .line 165
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 166
    .line 167
    invoke-virtual {p0, v3, v3}, Lcom/mycompany/app/main/MainTxtView;->Z0(IZ)V

    .line 168
    .line 169
    .line 170
    :cond_9
    :goto_4
    return-void
.end method

.method public final R0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->P1:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final S0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, -0x70708

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/high16 v2, -0x1000000

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v2, v1

    .line 23
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 31
    .line 32
    const v0, -0xdededf

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 39
    .line 40
    const v1, -0xc0c0c1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->O1:Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->P1:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_dark_20:I

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_dark_20:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_sticky_note_dark_20:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_brightness_6_dark_24:I

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_fields_dark_24:I

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_volume_up_dark_24:I

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->V1:Lcom/mycompany/app/view/MyButtonImage;

    .line 125
    .line 126
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_dark_24:I

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->W1:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_dark_24:I

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_dark_24:I

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_dark_24:I

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 170
    .line 171
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 185
    .line 186
    const v0, -0xafafb0

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->V1:Lcom/mycompany/app/view/MyButtonImage;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->W1:Lcom/mycompany/app/view/MyButtonImage;

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 228
    .line 229
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 233
    .line 234
    const/high16 v0, -0x5f000000

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 240
    .line 241
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 245
    .line 246
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 250
    .line 251
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 255
    .line 256
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->V1:Lcom/mycompany/app/view/MyButtonImage;

    .line 260
    .line 261
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->W1:Lcom/mycompany/app/view/MyButtonImage;

    .line 265
    .line 266
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 275
    .line 276
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 280
    .line 281
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 286
    .line 287
    const/4 v0, -0x1

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 289
    .line 290
    .line 291
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 292
    .line 293
    const v2, -0x252526

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->O1:Landroid/widget/RelativeLayout;

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->P1:Landroid/widget/LinearLayout;

    .line 305
    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 312
    .line 313
    .line 314
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 315
    .line 316
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 317
    .line 318
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 319
    .line 320
    .line 321
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 322
    .line 323
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_black_20:I

    .line 324
    .line 325
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 326
    .line 327
    .line 328
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 329
    .line 330
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_black_20:I

    .line 331
    .line 332
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 333
    .line 334
    .line 335
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 336
    .line 337
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_sticky_note_black_20:I

    .line 338
    .line 339
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 343
    .line 344
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 350
    .line 351
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_brightness_6_black_24:I

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 354
    .line 355
    .line 356
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 357
    .line 358
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_fields_black_24:I

    .line 359
    .line 360
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 364
    .line 365
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_volume_up_black_24:I

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 368
    .line 369
    .line 370
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 371
    .line 372
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 373
    .line 374
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->V1:Lcom/mycompany/app/view/MyButtonImage;

    .line 378
    .line 379
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_black_24:I

    .line 380
    .line 381
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->W1:Lcom/mycompany/app/view/MyButtonImage;

    .line 385
    .line 386
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_black_24:I

    .line 387
    .line 388
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 389
    .line 390
    .line 391
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 392
    .line 393
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_black_24:I

    .line 394
    .line 395
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 396
    .line 397
    .line 398
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 399
    .line 400
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    .line 401
    .line 402
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 403
    .line 404
    .line 405
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 406
    .line 407
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_black_24:I

    .line 408
    .line 409
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 413
    .line 414
    const v0, -0x1f1f20

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 418
    .line 419
    .line 420
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 423
    .line 424
    .line 425
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 426
    .line 427
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 428
    .line 429
    .line 430
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 431
    .line 432
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 433
    .line 434
    .line 435
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 436
    .line 437
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 438
    .line 439
    .line 440
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 441
    .line 442
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 443
    .line 444
    .line 445
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 446
    .line 447
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 448
    .line 449
    .line 450
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 451
    .line 452
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 453
    .line 454
    .line 455
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 456
    .line 457
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 458
    .line 459
    .line 460
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->V1:Lcom/mycompany/app/view/MyButtonImage;

    .line 461
    .line 462
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 463
    .line 464
    .line 465
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->W1:Lcom/mycompany/app/view/MyButtonImage;

    .line 466
    .line 467
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 468
    .line 469
    .line 470
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 471
    .line 472
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 473
    .line 474
    .line 475
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 476
    .line 477
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 478
    .line 479
    .line 480
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 481
    .line 482
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 483
    .line 484
    .line 485
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 486
    .line 487
    const v1, -0x5e000001

    .line 488
    .line 489
    .line 490
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 491
    .line 492
    .line 493
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 494
    .line 495
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 496
    .line 497
    .line 498
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 499
    .line 500
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 501
    .line 502
    .line 503
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 504
    .line 505
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 506
    .line 507
    .line 508
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 509
    .line 510
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 511
    .line 512
    .line 513
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->V1:Lcom/mycompany/app/view/MyButtonImage;

    .line 514
    .line 515
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 516
    .line 517
    .line 518
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->W1:Lcom/mycompany/app/view/MyButtonImage;

    .line 519
    .line 520
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 524
    .line 525
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 526
    .line 527
    .line 528
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 529
    .line 530
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 531
    .line 532
    .line 533
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 534
    .line 535
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 536
    .line 537
    .line 538
    return-void
.end method

.method public final T0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->N0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget v0, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->Q0()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/mycompany/app/main/MainTxtView;->a1(Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainTxtView;->A2:Z

    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->l2:Z

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    :goto_1
    return-void

    .line 52
    :cond_5
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainTxtView;->l2:Z

    .line 53
    .line 54
    const/16 v0, -0x4d2

    .line 55
    .line 56
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->C2:Z

    .line 60
    .line 61
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->N0()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_7

    .line 70
    .line 71
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 74
    .line 75
    if-eqz v3, :cond_6

    .line 76
    .line 77
    const v3, -0x50506

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_6
    const/high16 v3, -0x1000000

    .line 82
    .line 83
    :goto_2
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyButtonImage;->o(IZ)V

    .line 84
    .line 85
    .line 86
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->R0()V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final U0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 7
    .line 8
    iget v0, v0, Lcom/mycompany/app/main/MainTxtAdapter;->k:I

    .line 9
    .line 10
    if-ne v1, v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->Q2:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance v1, Lcom/mycompany/app/main/MainTxtView$33;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTxtView$33;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final V0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 11
    .line 12
    :goto_0
    move-object v3, v1

    .line 13
    move-object v1, v0

    .line 14
    move-object v0, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->q2:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->q2:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->r2:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->r2:Ljava/lang/String;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O3(Ljava/lang/String;)Ljava/util/Locale;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_4
    if-nez v0, :cond_5

    .line 55
    .line 56
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_3

    .line 61
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    .line 64
    .line 65
    .line 66
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    const/4 v1, -0x2

    .line 69
    :goto_2
    if-eqz v1, :cond_6

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    if-eq v1, v2, :cond_6

    .line 73
    .line 74
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_6
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .line 82
    .line 83
    :catch_1
    :goto_4
    return-void
.end method

.method public final W0(IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->A2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainTxtView;->A2:Z

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    if-ltz p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lt p1, v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 37
    :goto_1
    if-nez p1, :cond_4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_4
    iget p1, p1, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->a:I

    .line 41
    .line 42
    iput p1, p0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 43
    .line 44
    if-nez p2, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->U0()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 51
    .line 52
    if-nez p1, :cond_6

    .line 53
    .line 54
    :goto_2
    return-void

    .line 55
    :cond_6
    new-instance p2, Lcom/mycompany/app/main/MainTxtView$32;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainTxtView$32;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final X0(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ltz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move-object v0, v1

    .line 25
    :goto_1
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 29
    .line 30
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->V2:Ljava/lang/Runnable;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MainTxtView;->O0(Z)V

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/main/MainTxtView;->W0(IZ)V

    .line 54
    .line 55
    .line 56
    iput p1, p0, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->C2:Z

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->P2:Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 63
    .line 64
    const-wide/16 v0, 0xc8

    .line 65
    .line 66
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final Y0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iget v1, p0, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 12
    .line 13
    const/16 v2, -0x4d2

    .line 14
    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    iget v1, p0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 18
    .line 19
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 20
    .line 21
    :cond_2
    const/4 v1, 0x1

    .line 22
    if-ne p1, v1, :cond_3

    .line 23
    .line 24
    iget v2, p0, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 25
    .line 26
    sub-int/2addr v2, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    const/4 v2, 0x2

    .line 29
    if-ne p1, v2, :cond_4

    .line 30
    .line 31
    iget v2, p0, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 32
    .line 33
    add-int/2addr v2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_4
    iget v2, p0, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-lt v2, v0, :cond_5

    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/lit8 v2, v0, -0x1

    .line 50
    .line 51
    :cond_5
    const/4 v0, 0x0

    .line 52
    if-gez v2, :cond_6

    .line 53
    .line 54
    move v2, v0

    .line 55
    :cond_6
    if-eqz p1, :cond_7

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_7
    move v1, v0

    .line 59
    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/mycompany/app/main/MainTxtView;->X0(IZ)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final Z0(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->U0()V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 29
    .line 30
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez p1, :cond_4

    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :cond_4
    new-instance p2, Lcom/mycompany/app/main/MainTxtView$31;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainTxtView$31;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final a1(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->y2:I

    .line 11
    .line 12
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->z2:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->j2:Ljava/util/ArrayList;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, p1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 39
    .line 40
    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 42
    .line 43
    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/main/MainTxtView;->Z0(IZ)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->R2:Ljava/util/List;

    .line 48
    .line 49
    new-instance p1, Lcom/mycompany/app/main/MainTxtView$30;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainTxtView$30;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final b1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->N2:Ljava/io/BufferedReader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->M2:Ljava/io/InputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    .line 14
    .line 15
    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->L2:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->L2:Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->L2:Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->L2:Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    :cond_3
    :goto_0
    return-void

    .line 35
    :cond_4
    new-instance v0, Lcom/mycompany/app/main/MainTxtView$25;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lcom/mycompany/app/main/MainTxtView$25;-><init>(Ljava/net/HttpURLConnection;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final c1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->U0()V

    .line 10
    .line 11
    .line 12
    :goto_0
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 21
    .line 22
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 25
    .line 26
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->y2:I

    .line 27
    .line 28
    iput v0, p0, Lcom/mycompany/app/main/MainTxtView;->z2:I

    .line 29
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setLoad(Z)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lcom/mycompany/app/main/MainTxtView;->Y1:Lcom/mycompany/app/view/MyButtonImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    :catch_0
    :cond_2
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq v0, v2, :cond_4

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-le v0, v1, :cond_6

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->f2:Landroid/view/ScaleGestureDetector;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 38
    .line 39
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$46;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainTxtView$46;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->f2:Landroid/view/ScaleGestureDetector;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->g()V

    .line 55
    .line 56
    .line 57
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 62
    .line 63
    .line 64
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->e2:Landroid/view/GestureDetector;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->f2:Landroid/view/ScaleGestureDetector;

    .line 72
    .line 73
    if-eqz v0, :cond_8

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 76
    .line 77
    .line 78
    :cond_8
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->E2:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogSaveSource;->E(IILandroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/16 v0, 0x9

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-ne p1, v0, :cond_3

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    if-ne p2, p1, :cond_6

    .line 19
    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->h2:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->i2:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->H0()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    const/4 p2, 0x7

    .line 55
    if-ne p1, p2, :cond_6

    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 62
    .line 63
    sget-boolean p3, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 64
    .line 65
    if-eqz p3, :cond_4

    .line 66
    .line 67
    sget-object p3, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-nez p3, :cond_4

    .line 74
    .line 75
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->j3(Landroid/content/Context;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainUtil;->w1(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p2, p1, Lcom/mycompany/app/main/MainTxtAdapter;->h:Landroid/graphics/Typeface;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    sget-boolean p2, Lcom/mycompany/app/pref/PrefRead;->p:Z

    .line 87
    .line 88
    if-eqz p2, :cond_5

    .line 89
    .line 90
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 91
    .line 92
    const/4 p3, 0x1

    .line 93
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iput-object p2, p1, Lcom/mycompany/app/main/MainTxtAdapter;->h:Landroid/graphics/Typeface;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iput-object v1, p1, Lcom/mycompany/app/main/MainTxtAdapter;->h:Landroid/graphics/Typeface;

    .line 101
    .line 102
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sput-boolean p1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainTxtView;->J2:Z

    .line 19
    .line 20
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-ne p1, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainTxtView;->J2:Z

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainTxtView;->S0(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->A0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    :catch_0
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainTxtView;->J2:Z

    .line 9
    .line 10
    sget v1, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 11
    .line 12
    iput v1, v0, Lcom/mycompany/app/main/MainTxtView;->K2:I

    .line 13
    .line 14
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "EXTRA_PATH"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "EXTRA_REFERER"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->h2:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "EXTRA_NAME"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->i2:Ljava/lang/String;

    .line 69
    .line 70
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 71
    .line 72
    const/16 v2, 0x32

    .line 73
    .line 74
    if-ge v1, v2, :cond_1

    .line 75
    .line 76
    sput v2, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/16 v2, 0x1f4

    .line 80
    .line 81
    if-le v1, v2, :cond_2

    .line 82
    .line 83
    sput v2, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 84
    .line 85
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 86
    const/16 v2, 0x9

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 89
    .line 90
    .line 91
    const/4 v3, 0x7

    .line 92
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 93
    .line 94
    .line 95
    const/16 v3, 0x13

    .line 96
    .line 97
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 98
    .line 99
    .line 100
    sget v1, Lnet/kaki87/soul2/testing/R$id;->read_icon_copy:I

    .line 101
    .line 102
    sget v3, Lnet/kaki87/soul2/testing/R$id;->read_icon_open:I

    .line 103
    .line 104
    sget v4, Lnet/kaki87/soul2/testing/R$id;->read_icon_save:I

    .line 105
    .line 106
    sget v5, Lnet/kaki87/soul2/testing/R$id;->read_icon_more:I

    .line 107
    .line 108
    sget v6, Lnet/kaki87/soul2/testing/R$id;->read_cast_icon:I

    .line 109
    .line 110
    sget v7, Lnet/kaki87/soul2/testing/R$id;->read_cast_ctrl:I

    .line 111
    .line 112
    new-instance v8, Lcom/mycompany/app/view/MyMainRelative;

    .line 113
    .line 114
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 118
    .line 119
    const/4 v10, -0x1

    .line 120
    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    new-instance v9, Lcom/mycompany/app/view/MyRoundItem;

    .line 127
    .line 128
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 132
    .line 133
    const/4 v12, 0x1

    .line 134
    iput-boolean v12, v9, Lcom/mycompany/app/view/MyRoundItem;->n:Z

    .line 135
    .line 136
    iput-boolean v12, v9, Lcom/mycompany/app/view/MyRoundItem;->o:Z

    .line 137
    .line 138
    iput v11, v9, Lcom/mycompany/app/view/MyRoundItem;->q:I

    .line 139
    .line 140
    invoke-virtual {v9}, Lcom/mycompany/app/view/MyRoundItem;->e()V

    .line 141
    .line 142
    .line 143
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 144
    .line 145
    invoke-direct {v11, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    const/4 v13, 0x2

    .line 149
    invoke-virtual {v11, v13, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    new-instance v11, Lcom/mycompany/app/view/MyRecyclerView;

    .line 156
    .line 157
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 161
    .line 162
    const/4 v14, 0x0

    .line 163
    invoke-virtual {v11, v13, v14, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v14}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v14}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v11, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 173
    .line 174
    .line 175
    new-instance v13, Lcom/mycompany/app/view/MyScrollBar;

    .line 176
    .line 177
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v13}, Lcom/mycompany/app/view/MyScrollBar;->n()V

    .line 181
    .line 182
    .line 183
    const/4 v15, 0x4

    .line 184
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    const/high16 v14, 0x42000000    # 32.0f

    .line 188
    .line 189
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    float-to-int v14, v14

    .line 194
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 195
    .line 196
    invoke-direct {v15, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 197
    .line 198
    .line 199
    sget v14, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 200
    .line 201
    if-ne v14, v12, :cond_3

    .line 202
    .line 203
    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13, v12}, Lcom/mycompany/app/view/MyScrollBar;->setPosLeft(Z)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_3
    const/16 v2, 0xb

    .line 211
    .line 212
    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    .line 214
    .line 215
    :goto_2
    invoke-virtual {v9, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    new-instance v2, Lcom/mycompany/app/view/MyFadeFrame;

    .line 219
    .line 220
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v12}, Lcom/mycompany/app/view/MyFadeFrame;->setTouchable(Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v12}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 227
    .line 228
    .line 229
    const/16 v14, 0x8

    .line 230
    .line 231
    invoke-virtual {v2, v14}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9, v2, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 235
    .line 236
    .line 237
    new-instance v15, Landroid/widget/RelativeLayout;

    .line 238
    .line 239
    invoke-direct {v15, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 240
    .line 241
    .line 242
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 243
    .line 244
    invoke-virtual {v2, v15, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 245
    .line 246
    .line 247
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 248
    .line 249
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 250
    .line 251
    .line 252
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 253
    .line 254
    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    .line 256
    .line 257
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 258
    .line 259
    int-to-float v14, v14

    .line 260
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 261
    .line 262
    .line 263
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 264
    .line 265
    move-object/from16 v18, v13

    .line 266
    .line 267
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 268
    .line 269
    invoke-direct {v14, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 270
    .line 271
    .line 272
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 273
    .line 274
    iput v13, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 275
    .line 276
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v15, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    .line 281
    .line 282
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 283
    .line 284
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v13, v4}, Landroid/view/View;->setId(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 291
    .line 292
    .line 293
    sget v4, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 294
    .line 295
    int-to-float v4, v4

    .line 296
    invoke-virtual {v13, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 297
    .line 298
    .line 299
    const/16 v4, 0x8

    .line 300
    .line 301
    invoke-virtual {v13, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 305
    .line 306
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 307
    .line 308
    invoke-direct {v4, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 309
    .line 310
    .line 311
    const/16 v14, 0x10

    .line 312
    .line 313
    invoke-virtual {v4, v14, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 314
    .line 315
    .line 316
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 317
    .line 318
    iput v14, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 319
    .line 320
    invoke-virtual {v15, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .line 322
    .line 323
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 324
    .line 325
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v1}, Landroid/view/View;->setId(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 332
    .line 333
    .line 334
    sget v1, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 335
    .line 336
    int-to-float v1, v1

    .line 337
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 338
    .line 339
    .line 340
    const/16 v1, 0x8

    .line 341
    .line 342
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    .line 347
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 348
    .line 349
    invoke-direct {v1, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 350
    .line 351
    .line 352
    const/16 v14, 0x10

    .line 353
    .line 354
    invoke-virtual {v1, v14, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 355
    .line 356
    .line 357
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 358
    .line 359
    iput v14, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 360
    .line 361
    invoke-virtual {v15, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    .line 363
    .line 364
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 365
    .line 366
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 373
    .line 374
    .line 375
    sget v3, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 376
    .line 377
    int-to-float v3, v3

    .line 378
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 379
    .line 380
    .line 381
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 382
    .line 383
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 384
    .line 385
    invoke-direct {v3, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 386
    .line 387
    .line 388
    const/16 v14, 0x10

    .line 389
    .line 390
    invoke-virtual {v3, v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 391
    .line 392
    .line 393
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 394
    .line 395
    iput v14, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 396
    .line 397
    invoke-virtual {v15, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    .line 399
    .line 400
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 401
    .line 402
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 409
    .line 410
    .line 411
    sget v5, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 412
    .line 413
    int-to-float v5, v5

    .line 414
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 415
    .line 416
    .line 417
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 418
    .line 419
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 420
    .line 421
    invoke-direct {v5, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 422
    .line 423
    .line 424
    const/16 v14, 0x10

    .line 425
    .line 426
    invoke-virtual {v5, v14, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 427
    .line 428
    .line 429
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 430
    .line 431
    iput v14, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 432
    .line 433
    invoke-virtual {v15, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .line 435
    .line 436
    new-instance v5, Landroid/widget/FrameLayout;

    .line 437
    .line 438
    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 442
    .line 443
    .line 444
    const/4 v6, 0x4

    .line 445
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 446
    .line 447
    .line 448
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 449
    .line 450
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 451
    .line 452
    move-object/from16 v16, v11

    .line 453
    .line 454
    const/4 v11, -0x2

    .line 455
    invoke-direct {v6, v11, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 456
    .line 457
    .line 458
    const/16 v14, 0x15

    .line 459
    .line 460
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v15, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    .line 465
    .line 466
    new-instance v6, Landroid/widget/LinearLayout;

    .line 467
    .line 468
    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 469
    .line 470
    .line 471
    const/4 v14, 0x0

    .line 472
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 476
    .line 477
    .line 478
    const/16 v14, 0x8

    .line 479
    .line 480
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 481
    .line 482
    .line 483
    const/high16 v14, 0x42a00000    # 80.0f

    .line 484
    .line 485
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 486
    .line 487
    .line 488
    move-result v14

    .line 489
    float-to-int v14, v14

    .line 490
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 491
    .line 492
    move-object/from16 v19, v5

    .line 493
    .line 494
    const/4 v5, -0x1

    .line 495
    invoke-direct {v11, v5, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 496
    .line 497
    .line 498
    const/16 v5, 0x50

    .line 499
    .line 500
    iput v5, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 501
    .line 502
    invoke-virtual {v2, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    .line 504
    .line 505
    new-instance v11, Landroid/view/View;

    .line 506
    .line 507
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 508
    .line 509
    .line 510
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 511
    .line 512
    move-object/from16 v21, v15

    .line 513
    .line 514
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 515
    .line 516
    move-object/from16 v22, v3

    .line 517
    .line 518
    const/4 v3, 0x0

    .line 519
    invoke-direct {v5, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 520
    .line 521
    .line 522
    const v3, 0x800013

    .line 523
    .line 524
    .line 525
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 526
    .line 527
    const/high16 v15, 0x3f800000    # 1.0f

    .line 528
    .line 529
    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 530
    .line 531
    invoke-virtual {v6, v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    .line 533
    .line 534
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 535
    .line 536
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 540
    .line 541
    .line 542
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 543
    .line 544
    int-to-float v11, v11

    .line 545
    const/4 v15, 0x1

    .line 546
    invoke-virtual {v5, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 547
    .line 548
    .line 549
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 550
    .line 551
    int-to-float v11, v11

    .line 552
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 553
    .line 554
    .line 555
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 556
    .line 557
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 558
    .line 559
    invoke-direct {v11, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 560
    .line 561
    .line 562
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 563
    .line 564
    invoke-virtual {v6, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    .line 566
    .line 567
    new-instance v11, Landroid/view/View;

    .line 568
    .line 569
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 570
    .line 571
    .line 572
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 573
    .line 574
    move-object/from16 v23, v5

    .line 575
    .line 576
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 577
    .line 578
    move-object/from16 v24, v1

    .line 579
    .line 580
    const/4 v1, 0x0

    .line 581
    invoke-direct {v15, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 582
    .line 583
    .line 584
    iput v3, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 585
    .line 586
    const/high16 v1, 0x3f800000    # 1.0f

    .line 587
    .line 588
    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 589
    .line 590
    invoke-virtual {v6, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    .line 592
    .line 593
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 594
    .line 595
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 599
    .line 600
    .line 601
    sget v5, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 602
    .line 603
    int-to-float v5, v5

    .line 604
    const/4 v15, 0x1

    .line 605
    invoke-virtual {v1, v5, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 606
    .line 607
    .line 608
    sget v5, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 609
    .line 610
    int-to-float v5, v5

    .line 611
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 612
    .line 613
    .line 614
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 615
    .line 616
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 617
    .line 618
    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 619
    .line 620
    .line 621
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 622
    .line 623
    invoke-virtual {v6, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    .line 625
    .line 626
    new-instance v5, Landroid/view/View;

    .line 627
    .line 628
    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 629
    .line 630
    .line 631
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 632
    .line 633
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 634
    .line 635
    move-object/from16 v25, v1

    .line 636
    .line 637
    const/4 v1, 0x0

    .line 638
    invoke-direct {v11, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 639
    .line 640
    .line 641
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 642
    .line 643
    const/high16 v1, 0x3f800000    # 1.0f

    .line 644
    .line 645
    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 646
    .line 647
    invoke-virtual {v6, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    .line 649
    .line 650
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 651
    .line 652
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 656
    .line 657
    .line 658
    sget v5, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 659
    .line 660
    int-to-float v5, v5

    .line 661
    const/4 v15, 0x1

    .line 662
    invoke-virtual {v1, v5, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 663
    .line 664
    .line 665
    sget v5, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 666
    .line 667
    int-to-float v5, v5

    .line 668
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 669
    .line 670
    .line 671
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 672
    .line 673
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 674
    .line 675
    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 676
    .line 677
    .line 678
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 679
    .line 680
    invoke-virtual {v6, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    .line 682
    .line 683
    new-instance v5, Landroid/view/View;

    .line 684
    .line 685
    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 686
    .line 687
    .line 688
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 689
    .line 690
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 691
    .line 692
    move-object/from16 v26, v1

    .line 693
    .line 694
    const/4 v1, 0x0

    .line 695
    invoke-direct {v11, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 696
    .line 697
    .line 698
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 699
    .line 700
    const/high16 v1, 0x3f800000    # 1.0f

    .line 701
    .line 702
    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 703
    .line 704
    invoke-virtual {v6, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    .line 706
    .line 707
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 708
    .line 709
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 713
    .line 714
    .line 715
    sget v5, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 716
    .line 717
    int-to-float v5, v5

    .line 718
    const/4 v15, 0x1

    .line 719
    invoke-virtual {v1, v5, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 720
    .line 721
    .line 722
    sget v5, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 723
    .line 724
    int-to-float v5, v5

    .line 725
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 726
    .line 727
    .line 728
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 729
    .line 730
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 731
    .line 732
    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 733
    .line 734
    .line 735
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 736
    .line 737
    invoke-virtual {v6, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    .line 739
    .line 740
    new-instance v5, Landroid/view/View;

    .line 741
    .line 742
    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 743
    .line 744
    .line 745
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 746
    .line 747
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 748
    .line 749
    move-object/from16 v27, v1

    .line 750
    .line 751
    const/4 v1, 0x0

    .line 752
    invoke-direct {v11, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 753
    .line 754
    .line 755
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 756
    .line 757
    const/high16 v15, 0x3f800000    # 1.0f

    .line 758
    .line 759
    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 760
    .line 761
    invoke-virtual {v6, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    .line 763
    .line 764
    new-instance v5, Landroid/widget/LinearLayout;

    .line 765
    .line 766
    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 773
    .line 774
    .line 775
    const/16 v11, 0x8

    .line 776
    .line 777
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 778
    .line 779
    .line 780
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 781
    .line 782
    const/4 v15, -0x1

    .line 783
    invoke-direct {v11, v15, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 784
    .line 785
    .line 786
    const/16 v14, 0x50

    .line 787
    .line 788
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 789
    .line 790
    invoke-virtual {v2, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    .line 792
    .line 793
    new-instance v11, Landroid/view/View;

    .line 794
    .line 795
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 796
    .line 797
    .line 798
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 799
    .line 800
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 801
    .line 802
    invoke-direct {v14, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 803
    .line 804
    .line 805
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 806
    .line 807
    const/high16 v1, 0x3f800000    # 1.0f

    .line 808
    .line 809
    iput v1, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 810
    .line 811
    invoke-virtual {v5, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    .line 813
    .line 814
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 815
    .line 816
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 820
    .line 821
    .line 822
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 823
    .line 824
    int-to-float v11, v11

    .line 825
    const/4 v15, 0x1

    .line 826
    invoke-virtual {v1, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 827
    .line 828
    .line 829
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 830
    .line 831
    int-to-float v11, v11

    .line 832
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 833
    .line 834
    .line 835
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 836
    .line 837
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 838
    .line 839
    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 840
    .line 841
    .line 842
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 843
    .line 844
    invoke-virtual {v5, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    .line 846
    .line 847
    new-instance v11, Landroid/view/View;

    .line 848
    .line 849
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 850
    .line 851
    .line 852
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    .line 854
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 855
    .line 856
    move-object/from16 v20, v1

    .line 857
    .line 858
    const/4 v1, 0x0

    .line 859
    invoke-direct {v14, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 860
    .line 861
    .line 862
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 863
    .line 864
    const/high16 v1, 0x3f800000    # 1.0f

    .line 865
    .line 866
    iput v1, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 867
    .line 868
    invoke-virtual {v5, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    .line 870
    .line 871
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 872
    .line 873
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 877
    .line 878
    .line 879
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 880
    .line 881
    int-to-float v11, v11

    .line 882
    const/4 v15, 0x1

    .line 883
    invoke-virtual {v1, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 884
    .line 885
    .line 886
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 887
    .line 888
    int-to-float v11, v11

    .line 889
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 890
    .line 891
    .line 892
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 893
    .line 894
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 895
    .line 896
    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 897
    .line 898
    .line 899
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 900
    .line 901
    invoke-virtual {v5, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    .line 903
    .line 904
    new-instance v11, Landroid/view/View;

    .line 905
    .line 906
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 907
    .line 908
    .line 909
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 910
    .line 911
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 912
    .line 913
    move-object/from16 v28, v1

    .line 914
    .line 915
    const/4 v1, 0x0

    .line 916
    invoke-direct {v14, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 917
    .line 918
    .line 919
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 920
    .line 921
    const/high16 v1, 0x3f800000    # 1.0f

    .line 922
    .line 923
    iput v1, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 924
    .line 925
    invoke-virtual {v5, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    .line 927
    .line 928
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 929
    .line 930
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 931
    .line 932
    .line 933
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 934
    .line 935
    .line 936
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 937
    .line 938
    int-to-float v11, v11

    .line 939
    const/4 v15, 0x1

    .line 940
    invoke-virtual {v1, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 941
    .line 942
    .line 943
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 944
    .line 945
    int-to-float v11, v11

    .line 946
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 947
    .line 948
    .line 949
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 950
    .line 951
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 952
    .line 953
    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 954
    .line 955
    .line 956
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 957
    .line 958
    invoke-virtual {v5, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    .line 960
    .line 961
    new-instance v11, Landroid/view/View;

    .line 962
    .line 963
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 964
    .line 965
    .line 966
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 967
    .line 968
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 969
    .line 970
    move-object/from16 v29, v1

    .line 971
    .line 972
    const/4 v1, 0x0

    .line 973
    invoke-direct {v14, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 974
    .line 975
    .line 976
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 977
    .line 978
    const/high16 v1, 0x3f800000    # 1.0f

    .line 979
    .line 980
    iput v1, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 981
    .line 982
    invoke-virtual {v5, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    .line 984
    .line 985
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 986
    .line 987
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 988
    .line 989
    .line 990
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 991
    .line 992
    .line 993
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 994
    .line 995
    int-to-float v11, v11

    .line 996
    const/4 v15, 0x1

    .line 997
    invoke-virtual {v1, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 998
    .line 999
    .line 1000
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 1001
    .line 1002
    int-to-float v11, v11

    .line 1003
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 1004
    .line 1005
    .line 1006
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1007
    .line 1008
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1009
    .line 1010
    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1011
    .line 1012
    .line 1013
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1014
    .line 1015
    invoke-virtual {v5, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    .line 1017
    .line 1018
    new-instance v11, Landroid/view/View;

    .line 1019
    .line 1020
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1021
    .line 1022
    .line 1023
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1024
    .line 1025
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1026
    .line 1027
    move-object/from16 v30, v1

    .line 1028
    .line 1029
    const/4 v1, 0x0

    .line 1030
    invoke-direct {v14, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1031
    .line 1032
    .line 1033
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1034
    .line 1035
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1036
    .line 1037
    iput v1, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1038
    .line 1039
    invoke-virtual {v5, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    .line 1041
    .line 1042
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 1043
    .line 1044
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1048
    .line 1049
    .line 1050
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 1051
    .line 1052
    int-to-float v11, v11

    .line 1053
    const/4 v15, 0x1

    .line 1054
    invoke-virtual {v1, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 1055
    .line 1056
    .line 1057
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 1058
    .line 1059
    int-to-float v11, v11

    .line 1060
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 1061
    .line 1062
    .line 1063
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1064
    .line 1065
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1066
    .line 1067
    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1068
    .line 1069
    .line 1070
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1071
    .line 1072
    invoke-virtual {v5, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    .line 1074
    .line 1075
    new-instance v11, Landroid/view/View;

    .line 1076
    .line 1077
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1078
    .line 1079
    .line 1080
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1081
    .line 1082
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1083
    .line 1084
    move-object/from16 v17, v1

    .line 1085
    .line 1086
    const/4 v1, 0x0

    .line 1087
    invoke-direct {v14, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1088
    .line 1089
    .line 1090
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1091
    .line 1092
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1093
    .line 1094
    iput v1, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1095
    .line 1096
    invoke-virtual {v5, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    .line 1098
    .line 1099
    new-instance v1, Lcom/mycompany/app/view/MyFadeImage;

    .line 1100
    .line 1101
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1105
    .line 1106
    .line 1107
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 1108
    .line 1109
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1110
    .line 1111
    .line 1112
    const/16 v14, 0x8

    .line 1113
    .line 1114
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 1115
    .line 1116
    .line 1117
    const/4 v15, -0x1

    .line 1118
    invoke-virtual {v9, v1, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1119
    .line 1120
    .line 1121
    new-instance v3, Lcom/mycompany/app/view/MyCoverView;

    .line 1122
    .line 1123
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v3, v14}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v9, v3, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1130
    .line 1131
    .line 1132
    new-instance v10, Landroid/widget/FrameLayout;

    .line 1133
    .line 1134
    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v10, v7}, Landroid/view/View;->setId(I)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    .line 1142
    .line 1143
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1144
    .line 1145
    const/4 v11, -0x2

    .line 1146
    invoke-direct {v7, v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1147
    .line 1148
    .line 1149
    const/16 v11, 0xc

    .line 1150
    .line 1151
    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v8, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    .line 1156
    .line 1157
    iput-object v8, v0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 1158
    .line 1159
    iput-object v12, v0, Lcom/mycompany/app/main/MainTxtView;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1160
    .line 1161
    iput-object v13, v0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1162
    .line 1163
    iput-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1164
    .line 1165
    move-object/from16 v4, v24

    .line 1166
    .line 1167
    iput-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1168
    .line 1169
    move-object/from16 v4, v22

    .line 1170
    .line 1171
    iput-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1172
    .line 1173
    iput-object v9, v0, Lcom/mycompany/app/main/MainTxtView;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 1174
    .line 1175
    move-object/from16 v4, v16

    .line 1176
    .line 1177
    iput-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 1178
    .line 1179
    move-object/from16 v4, v18

    .line 1180
    .line 1181
    iput-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 1182
    .line 1183
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 1184
    .line 1185
    move-object/from16 v2, v21

    .line 1186
    .line 1187
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->O1:Landroid/widget/RelativeLayout;

    .line 1188
    .line 1189
    iput-object v6, v0, Lcom/mycompany/app/main/MainTxtView;->P1:Landroid/widget/LinearLayout;

    .line 1190
    .line 1191
    iput-object v5, v0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 1192
    .line 1193
    move-object/from16 v2, v23

    .line 1194
    .line 1195
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1196
    .line 1197
    move-object/from16 v2, v25

    .line 1198
    .line 1199
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1200
    .line 1201
    move-object/from16 v2, v26

    .line 1202
    .line 1203
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1204
    .line 1205
    move-object/from16 v2, v27

    .line 1206
    .line 1207
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1208
    .line 1209
    move-object/from16 v2, v20

    .line 1210
    .line 1211
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->V1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1212
    .line 1213
    move-object/from16 v2, v28

    .line 1214
    .line 1215
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->W1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1216
    .line 1217
    move-object/from16 v2, v29

    .line 1218
    .line 1219
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1220
    .line 1221
    move-object/from16 v2, v30

    .line 1222
    .line 1223
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 1224
    .line 1225
    move-object/from16 v2, v17

    .line 1226
    .line 1227
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 1228
    .line 1229
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->b2:Lcom/mycompany/app/view/MyFadeImage;

    .line 1230
    .line 1231
    iput-object v3, v0, Lcom/mycompany/app/main/MainTxtView;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 1232
    .line 1233
    move-object/from16 v1, v19

    .line 1234
    .line 1235
    invoke-virtual {v0, v8, v1, v10}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 1236
    .line 1237
    .line 1238
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 1239
    .line 1240
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v2

    .line 1244
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 1245
    .line 1246
    .line 1247
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 1248
    .line 1249
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 1250
    .line 1251
    .line 1252
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 1253
    .line 1254
    if-nez v1, :cond_4

    .line 1255
    .line 1256
    return-void

    .line 1257
    :cond_4
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$1;

    .line 1258
    .line 1259
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$1;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1263
    .line 1264
    .line 1265
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTxtAdapter;->d()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, v0, Lcom/mycompany/app/main/MainTxtAdapter;->n:I

    .line 77
    .line 78
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 79
    .line 80
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtAdapter;->h:Landroid/graphics/Typeface;

    .line 81
    .line 82
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtAdapter;->l:Lcom/mycompany/app/view/MyManagerLinear;

    .line 83
    .line 84
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtAdapter;->m:Lcom/mycompany/app/main/MainTxtAdapter$MainTxtListener;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 87
    .line 88
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 89
    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 96
    .line 97
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 98
    .line 99
    if-eqz v0, :cond_9

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 105
    .line 106
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 107
    .line 108
    if-eqz v0, :cond_a

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 111
    .line 112
    .line 113
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    if-eqz v0, :cond_b

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->b2:Lcom/mycompany/app/view/MyFadeImage;

    .line 125
    .line 126
    if-eqz v0, :cond_c

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeImage;->e()V

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->b2:Lcom/mycompany/app/view/MyFadeImage;

    .line 132
    .line 133
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 134
    .line 135
    if-eqz v0, :cond_d

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 138
    .line 139
    .line 140
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 141
    .line 142
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->d2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 143
    .line 144
    if-eqz v0, :cond_e

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 147
    .line 148
    .line 149
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->d2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 150
    .line 151
    :cond_e
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 152
    .line 153
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 154
    .line 155
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->O1:Landroid/widget/RelativeLayout;

    .line 156
    .line 157
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->P1:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->e2:Landroid/view/GestureDetector;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->f2:Landroid/view/ScaleGestureDetector;

    .line 162
    .line 163
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 164
    .line 165
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->h2:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->i2:Ljava/lang/String;

    .line 168
    .line 169
    iput-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->j2:Ljava/util/ArrayList;

    .line 170
    .line 171
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->b2:Lcom/mycompany/app/view/MyFadeImage;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->h2:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->i2:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "EXTRA_PATH"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "EXTRA_REFERER"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->h2:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "EXTRA_NAME"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->i2:Ljava/lang/String;

    .line 56
    .line 57
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->b2:Lcom/mycompany/app/view/MyFadeImage;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeImage;->f()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 71
    .line 72
    const/16 v0, 0x8

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->H0()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainTxtView;->b1(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->k2:Lcom/mycompany/app/main/MainTxtView$LoadTask;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->k2:Lcom/mycompany/app/main/MainTxtView$LoadTask;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->E2:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSaveSource;->dismiss()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->E2:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->F2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSeekBright;->dismiss()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->F2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->G2:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSeekText;->dismiss()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->G2:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 50
    .line 51
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->H2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSeekAudio;->dismiss()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->H2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 59
    .line 60
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView;->I2:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSetTts;->dismiss()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->I2:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 68
    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->J0()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTxtView;->P0()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView;->I2:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTts;->I()V

    .line 81
    .line 82
    .line 83
    :cond_7
    :goto_0
    iget v0, p0, Lcom/mycompany/app/main/MainTxtView;->K2:I

    .line 84
    .line 85
    sget v1, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 86
    .line 87
    if-eq v0, v1, :cond_8

    .line 88
    .line 89
    iput v1, p0, Lcom/mycompany/app/main/MainTxtView;->K2:I

    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 92
    .line 93
    const/16 v2, 0x8

    .line 94
    .line 95
    const-string v3, "mTextSize"

    .line 96
    .line 97
    invoke-static {v0, v2, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_8
    return-void
.end method
