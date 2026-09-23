.class Lcom/mycompany/app/web/WebVideoFull$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$16;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$16$1;->c:Lcom/mycompany/app/web/WebVideoFull$16;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$16$1;->c:Lcom/mycompany/app/web/WebVideoFull$16;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$16;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->y:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    sput-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->y:Z

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 18
    .line 19
    const/16 v3, 0xd

    .line 20
    .line 21
    const-string v4, "mNotiShow2"

    .line 22
    .line 23
    invoke-static {v3, v1, v4, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setNoti(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    xor-int/2addr v1, v3

    .line 35
    sput-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 36
    .line 37
    iget-object v4, v0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 38
    .line 39
    const/4 v5, 0x7

    .line 40
    const-string v6, "mVideoIcon2"

    .line 41
    .line 42
    invoke-static {v5, v4, v6, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 46
    .line 47
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    const/high16 v4, 0x3f800000    # 1.0f

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const v4, 0x3ecccccd    # 0.4f

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 61
    .line 62
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 63
    .line 64
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 65
    .line 66
    .line 67
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebVideoFull;->H(Lcom/mycompany/app/web/WebVideoFull;Z)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeRelative;->i(Z)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
