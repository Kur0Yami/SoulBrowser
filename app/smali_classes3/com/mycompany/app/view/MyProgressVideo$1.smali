.class Lcom/mycompany/app/view/MyProgressVideo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyProgressVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyProgressVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo$1;->c:Lcom/mycompany/app/view/MyProgressVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo$1;->c:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->j:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v2, v0, Lcom/mycompany/app/view/MyProgressVideo;->k:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_3

    .line 12
    .line 13
    const/16 v2, 0x64

    .line 14
    .line 15
    iput v2, v0, Lcom/mycompany/app/view/MyProgressVideo;->c:I

    .line 16
    .line 17
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->D3(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, v0, Lcom/mycompany/app/view/MyProgressVideo;->l:Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v2, v1}, Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;->b(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->u:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    sget v1, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 33
    .line 34
    :cond_2
    iput v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressVideo;->b()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    const/4 v3, 0x2

    .line 41
    if-ne v2, v3, :cond_5

    .line 42
    .line 43
    const-string v2, "audio"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/media/AudioManager;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->m:Landroid/media/AudioManager;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iput v3, v0, Lcom/mycompany/app/view/MyProgressVideo;->c:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 67
    .line 68
    :cond_4
    new-instance v1, Lcom/mycompany/app/view/MyProgressVideo$2;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyProgressVideo$2;-><init>(Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    const/16 v1, 0x3e8

    .line 78
    .line 79
    iput v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->c:I

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    iput v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressVideo;->b()V

    .line 85
    .line 86
    .line 87
    return-void
.end method
