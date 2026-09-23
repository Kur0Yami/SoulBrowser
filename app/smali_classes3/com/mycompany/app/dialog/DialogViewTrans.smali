.class public Lcom/mycompany/app/dialog/DialogViewTrans;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogViewTrans$LocalWebViewClient;,
        Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;
    }
.end annotation


# static fields
.field public static final synthetic k1:I


# instance fields
.field public A0:I

.field public B0:Z

.field public C0:Ljava/lang/String;

.field public D0:Ljava/util/ArrayList;

.field public E0:Landroid/widget/PopupWindow;

.field public F0:Z

.field public G0:Lcom/mycompany/app/view/MyDialogLinear;

.field public H0:Lcom/mycompany/app/view/MyButtonImage;

.field public I0:Lcom/mycompany/app/view/MyButtonImage;

.field public J0:Lcom/mycompany/app/view/MyButtonImage;

.field public K0:Lcom/mycompany/app/view/MyButtonImage;

.field public L0:Lcom/mycompany/app/view/MyButtonImage;

.field public M0:Lcom/mycompany/app/view/MyButtonImage;

.field public N0:Z

.field public O0:Z

.field public P0:Z

.field public Q0:Ljava/lang/String;

.field public R0:I

.field public S0:Z

.field public T0:Ljava/lang/String;

.field public U0:Ljava/lang/String;

.field public V0:Ljava/lang/String;

.field public W0:Ljava/lang/String;

.field public X0:Lcom/mycompany/app/dialog/DialogTransLang;

.field public Y0:Z

.field public Z0:Lcom/mycompany/app/main/MainTransText;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public a1:Ljava/lang/String;

.field public b0:Landroid/content/Context;

.field public b1:Ljava/lang/String;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public c1:Z

.field public d0:Landroid/widget/FrameLayout;

.field public d1:Ljava/lang/String;

.field public e0:Lcom/mycompany/app/web/WebNestView;

.field public e1:Ljava/lang/String;

.field public f0:Lcom/mycompany/app/view/MyButtonImage;

.field public f1:Ljava/lang/String;

.field public g0:Landroid/view/View;

.field public g1:Ljava/lang/String;

.field public h0:Lcom/mycompany/app/view/MyLineFrame;

.field public h1:Lcom/mycompany/app/web/WebTransControl;

.field public i0:Lcom/mycompany/app/web/WebTransControl;

.field public i1:Ljava/util/List;

.field public j0:Ljava/lang/String;

.field public final j1:Ljava/lang/Runnable;

.field public k0:Ljava/lang/String;

.field public l0:Z

.field public m0:Landroid/speech/tts/TextToSpeech;

.field public n0:F

.field public o0:F

.field public p0:Ljava/lang/String;

.field public q0:Ljava/lang/String;

.field public r0:Ljava/util/ArrayList;

.field public s0:I

.field public t0:I

.field public u0:Z

.field public v0:I

.field public w0:I

.field public x0:Z

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewTrans$37;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$37;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->j1:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->m()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->j0:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->k0:Ljava/lang/String;

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->l0:Z

    .line 28
    .line 29
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->a1:Ljava/lang/String;

    .line 30
    .line 31
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->b1:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewTrans$1;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$1;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogViewTrans;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->P0:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->P0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewTrans$10;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$10;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->P0:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->P0:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewTrans$11;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$11;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogViewTrans;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->N0:Z

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
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->N0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$36;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$36;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return v1
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogViewTrans;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->j1:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_4

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_4

    .line 13
    :cond_1
    iget v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->y0:I

    .line 14
    .line 15
    const/16 v3, -0x4d2

    .line 16
    .line 17
    if-ne v2, v3, :cond_2

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 20
    .line 21
    iput v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->y0:I

    .line 22
    .line 23
    :cond_2
    const/4 v2, 0x1

    .line 24
    if-ne p1, v2, :cond_3

    .line 25
    .line 26
    iget v3, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->y0:I

    .line 27
    .line 28
    sub-int/2addr v3, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    const/4 v3, 0x2

    .line 31
    if-ne p1, v3, :cond_4

    .line 32
    .line 33
    iget v3, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->y0:I

    .line 34
    .line 35
    add-int/2addr v3, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_4
    iget v3, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->y0:I

    .line 38
    .line 39
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lt v3, v1, :cond_5

    .line 44
    .line 45
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/lit8 v3, v1, -0x1

    .line 52
    .line 53
    :cond_5
    const/4 v1, 0x0

    .line 54
    if-gez v3, :cond_6

    .line 55
    .line 56
    move v3, v1

    .line 57
    :cond_6
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    if-eqz v4, :cond_8

    .line 61
    .line 62
    if-ltz v3, :cond_8

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-lt v3, v4, :cond_7

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_7
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_8
    :goto_1
    move-object v4, v5

    .line 81
    :goto_2
    if-nez v4, :cond_9

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_9
    iget-object v5, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 85
    .line 86
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_a

    .line 91
    .line 92
    :goto_4
    return-void

    .line 93
    :cond_a
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 94
    .line 95
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 96
    .line 97
    invoke-virtual {v4, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    if-eqz p1, :cond_b

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogViewTrans;->I(Z)V

    .line 103
    .line 104
    .line 105
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/mycompany/app/dialog/DialogViewTrans;->M(IIIZ)V

    .line 110
    .line 111
    .line 112
    iput v3, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->y0:I

    .line 113
    .line 114
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->B0:Z

    .line 115
    .line 116
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 117
    .line 118
    const-wide/16 v1, 0xc8

    .line 119
    .line 120
    invoke-virtual {p0, v0, v1, v2}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->X0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTransLang;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->X0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->E0:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->E0:Landroid/widget/PopupWindow;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->G0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->I0:Lcom/mycompany/app/view/MyButtonImage;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->K0:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final G()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->p0:Ljava/lang/String;

    .line 14
    .line 15
    :try_start_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$21;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$21;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewTrans$22;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$22;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

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

.method public final H(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->l0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->S0:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->Y0:Z

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    :cond_0
    iget p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->R0:I

    .line 17
    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_2
    :goto_0
    return v1
.end method

.method public final I(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->K()V

    .line 4
    .line 5
    .line 6
    :cond_0
    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 8
    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_1
    return-void
.end method

.method public final J()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->K()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->p0:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->q0:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 15
    .line 16
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 17
    .line 18
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->v0:I

    .line 19
    .line 20
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->w0:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "window.getSelection().removeAllRanges();"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final L()V
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
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->S0:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->k0:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->k0:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->p0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->p0:Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->q0:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->q0:Ljava/lang/String;

    .line 73
    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O3(Ljava/lang/String;)Ljava/util/Locale;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_6
    if-nez v0, :cond_7

    .line 81
    .line 82
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_3

    .line 87
    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    .line 90
    .line 91
    .line 92
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    const/4 v1, -0x2

    .line 95
    :goto_2
    if-eqz v1, :cond_8

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    if-eq v1, v2, :cond_8

    .line 99
    .line 100
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_8
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    :catch_1
    :goto_4
    return-void
.end method

.method public final M(IIIZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->x0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 p4, 0x0

    .line 7
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->x0:Z

    .line 8
    .line 9
    move p4, v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-ltz p3, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lt p3, v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    check-cast p3, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    :goto_0
    const/4 p3, 0x0

    .line 38
    :goto_1
    if-nez p3, :cond_4

    .line 39
    .line 40
    :goto_2
    return-void

    .line 41
    :cond_4
    iget v0, p3, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->b:I

    .line 42
    .line 43
    add-int/2addr p1, v0

    .line 44
    add-int/2addr v0, p2

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "(function(){var ele=document.getElementById(\'"

    .line 48
    .line 49
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget p3, p3, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->a:I

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p3, "\');setSelRange(ele,"

    .line 58
    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, ","

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, ");"

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    if-eqz p4, :cond_5

    .line 79
    .line 80
    const-string p1, "var tag=\'onTtsMark\';var val=0;var bcr=null;if(range){bcr=range.getBoundingClientRect();}else{bcr=ele.getBoundingClientRect();}if(bcr){val=bcr.top+\',\'+bcr.bottom;}android.onJsResult(tag,val);"

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_5
    const-string p1, "})();"

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {p1, p2, v1}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final N(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iput p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->K()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewTrans$24;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$24;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    return-void
.end method

.method public final O(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->K()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->v0:I

    .line 14
    .line 15
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->w0:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->D0:Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v1, p1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 40
    .line 41
    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->N(IZ)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->i1:Ljava/util/List;

    .line 46
    .line 47
    new-instance p1, Lcom/mycompany/app/dialog/DialogViewTrans$23;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$23;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final P()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->K()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->v0:I

    .line 15
    .line 16
    iput v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->w0:I

    .line 17
    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->S0:Z

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->K0:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setLoad(Z)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->K0:Lcom/mycompany/app/view/MyButtonImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->a1:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->a1:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->a1:Ljava/lang/String;

    .line 28
    .line 29
    sput-object v0, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->b1:Ljava/lang/String;

    .line 32
    .line 33
    sput-object v0, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefAlbum;->u(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->a1:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->b1:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->Z0:Lcom/mycompany/app/main/MainTransText;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTransText;->b()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->Z0:Lcom/mycompany/app/main/MainTransText;

    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->J()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->E()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 68
    .line 69
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->F(Landroid/webkit/WebView;Z)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 78
    .line 79
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 96
    .line 97
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->i0:Lcom/mycompany/app/web/WebTransControl;

    .line 98
    .line 99
    if-eqz v1, :cond_7

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTransControl;->c()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->i0:Lcom/mycompany/app/web/WebTransControl;

    .line 105
    .line 106
    :cond_7
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->d0:Landroid/widget/FrameLayout;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->g0:Landroid/view/View;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->j0:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->k0:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->C0:Ljava/lang/String;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->D0:Ljava/util/ArrayList;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->Q0:Ljava/lang/String;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->T0:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->U0:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->V0:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->W0:Ljava/lang/String;

    .line 131
    .line 132
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->r()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans;->E0:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->P()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->F()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewTrans;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
