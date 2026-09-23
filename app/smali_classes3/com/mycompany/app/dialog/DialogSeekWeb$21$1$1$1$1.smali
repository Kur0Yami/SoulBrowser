.class Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$21;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->n1:Lcom/mycompany/app/wview/WebFltView;

    .line 17
    .line 18
    if-nez v1, :cond_4

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->s0:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebFltView;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->e0:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/wview/WebFltView;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->n1:Lcom/mycompany/app/wview/WebFltView;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setPreview(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->n1:Lcom/mycompany/app/wview/WebFltView;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebFltView;->q()V

    .line 42
    .line 43
    .line 44
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->p0:Z

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->n1:Lcom/mycompany/app/wview/WebFltView;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setNoti(Z)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->X0:Z

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->n1:Lcom/mycompany/app/wview/WebFltView;

    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->n1:Lcom/mycompany/app/wview/WebFltView;

    .line 65
    .line 66
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$22;

    .line 67
    .line 68
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$22;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setFltListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->n1:Lcom/mycompany/app/wview/WebFltView;

    .line 75
    .line 76
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$23;

    .line 77
    .line 78
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$23;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setTouchListener(Lcom/mycompany/app/wview/WebFltView$FltTouchListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->s0:Landroid/widget/FrameLayout;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->n1:Lcom/mycompany/app/wview/WebFltView;

    .line 87
    .line 88
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 89
    .line 90
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
