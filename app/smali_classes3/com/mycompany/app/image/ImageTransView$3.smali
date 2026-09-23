.class Lcom/mycompany/app/image/ImageTransView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageTransView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageTransView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageTransView$3;->c:Lcom/mycompany/app/image/ImageTransView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView$3;->c:Lcom/mycompany/app/image/ImageTransView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageTransView;->c:Z

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v2, v3

    .line 21
    :goto_0
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->p0:Z

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 26
    .line 27
    add-int/2addr v2, v4

    .line 28
    :cond_2
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->q0:Z

    .line 29
    .line 30
    if-eqz v4, :cond_3

    .line 31
    .line 32
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 33
    .line 34
    add-int/2addr v2, v4

    .line 35
    :cond_3
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->r0:Z

    .line 36
    .line 37
    if-eqz v4, :cond_4

    .line 38
    .line 39
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 40
    .line 41
    add-int/2addr v2, v4

    .line 42
    :cond_4
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->s0:Z

    .line 43
    .line 44
    if-eqz v4, :cond_5

    .line 45
    .line 46
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 47
    .line 48
    add-int/2addr v2, v4

    .line 49
    :cond_5
    iget v4, v0, Lcom/mycompany/app/image/ImageTransView;->z:I

    .line 50
    .line 51
    add-int/2addr v2, v4

    .line 52
    iput v2, v0, Lcom/mycompany/app/image/ImageTransView;->E:I

    .line 53
    .line 54
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 55
    .line 56
    add-int/2addr v4, v5

    .line 57
    iput v4, v0, Lcom/mycompany/app/image/ImageTransView;->F:I

    .line 58
    .line 59
    iput v3, v0, Lcom/mycompany/app/image/ImageTransView;->G:I

    .line 60
    .line 61
    iput v3, v0, Lcom/mycompany/app/image/ImageTransView;->H:I

    .line 62
    .line 63
    iget v3, v0, Lcom/mycompany/app/image/ImageTransView;->o:I

    .line 64
    .line 65
    const/4 v5, -0x1

    .line 66
    if-eq v3, v5, :cond_6

    .line 67
    .line 68
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    .line 70
    iget v4, v0, Lcom/mycompany/app/image/ImageTransView;->E:I

    .line 71
    .line 72
    iget v5, v0, Lcom/mycompany/app/image/ImageTransView;->F:I

    .line 73
    .line 74
    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    invoke-virtual {v1, v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 82
    .line 83
    .line 84
    :cond_7
    :goto_1
    return-void
.end method
