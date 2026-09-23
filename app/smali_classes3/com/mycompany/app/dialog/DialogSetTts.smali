.class public Lcom/mycompany/app/dialog/DialogSetTts;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetTts$SortTts;
    }
.end annotation


# static fields
.field public static final synthetic u0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Landroid/widget/FrameLayout;

.field public e0:Lcom/mycompany/app/view/MyRoundFrame;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Ljava/lang/String;

.field public h0:Lcom/mycompany/app/view/MyRecyclerView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public l0:Lcom/mycompany/app/view/MyPopupMenu;

.field public m0:Ljava/lang/String;

.field public n0:F

.field public o0:F

.field public p0:Landroid/speech/tts/TextToSpeech;

.field public q0:Ljava/util/Locale;

.field public r0:Ljava/util/ArrayList;

.field public s0:Z

.field public t0:Lcom/mycompany/app/dialog/DialogSetMsg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 11
    .line 12
    sget-object p1, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 19
    .line 20
    sget p1, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 23
    .line 24
    :try_start_0
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 27
    .line 28
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetTts$10;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogSetTts$10;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetTts;->H()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetTts$1;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetTts$1;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static B(II)F
    .locals 2

    .line 1
    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    int-to-float p0, p0

    div-float/2addr p0, v0

    add-float/2addr p0, v1

    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    return v1

    :cond_0
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static C(FI)I
    .locals 1

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    sub-float/2addr p0, v0

    .line 4
    const/high16 v0, 0x41200000    # 10.0f

    .line 5
    .line 6
    mul-float/2addr p0, v0

    .line 7
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-gez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    if-le p0, p1, :cond_1

    .line 16
    .line 17
    return p1

    .line 18
    :cond_1
    return p0
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->t0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->t0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->d0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->d0:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p1, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->r0:Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 26
    .line 27
    return-void
.end method

.method public final G(Z)V
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget v0, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 12
    .line 13
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget v0, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 22
    .line 23
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 32
    .line 33
    sput-object v0, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 34
    .line 35
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 36
    .line 37
    sput v0, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 38
    .line 39
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 40
    .line 41
    sput v0, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefTts;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "mTtsPitch"

    .line 51
    .line 52
    const-string v2, "mTtsRate"

    .line 53
    .line 54
    const-string v3, "mTtsLang"

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    sget-object v4, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget v3, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 64
    .line 65
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 66
    .line 67
    .line 68
    sget v2, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 84
    .line 85
    .line 86
    :cond_2
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetTts;->dismiss()V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method public final H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/high16 v2, 0x3f000000    # 0.5f

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 19
    .line 20
    cmpg-float v3, v0, v2

    .line 21
    .line 22
    if-gez v3, :cond_1

    .line 23
    .line 24
    iput v2, p0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    .line 28
    .line 29
    cmpl-float v0, v0, v3

    .line 30
    .line 31
    if-lez v0, :cond_2

    .line 32
    .line 33
    iput v3, p0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 34
    .line 35
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 36
    .line 37
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 40
    .line 41
    .line 42
    :cond_3
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 51
    .line 52
    cmpg-float v1, v0, v2

    .line 53
    .line 54
    if-gez v1, :cond_4

    .line 55
    .line 56
    iput v2, p0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const/high16 v1, 0x40000000    # 2.0f

    .line 60
    .line 61
    cmpl-float v0, v0, v1

    .line 62
    .line 63
    if-lez v0, :cond_5

    .line 64
    .line 65
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 66
    .line 67
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 68
    .line 69
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :catch_0
    :cond_6
    :goto_2
    return-void
.end method

.method public final I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetTts;->F()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetTts;->D()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->e0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundFrame;->a()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->e0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 53
    .line 54
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 71
    .line 72
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->d0:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->g0:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 87
    .line 88
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
