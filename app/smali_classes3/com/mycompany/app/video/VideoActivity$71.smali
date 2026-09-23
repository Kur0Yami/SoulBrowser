.class Lcom/mycompany/app/video/VideoActivity$71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$71;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$71;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->b1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$71;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 7
    .line 8
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 11
    .line 12
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "android.intent.category.OPENABLE"

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string v1, "audio/*"

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x41

    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x11

    .line 31
    .line 32
    invoke-virtual {p1, p2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->o(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-ne p2, v0, :cond_1

    .line 44
    .line 45
    sget-boolean p2, Lcom/mycompany/app/pref/PrefSub;->x:Z

    .line 46
    .line 47
    xor-int/2addr p2, v0

    .line 48
    sput-boolean p2, Lcom/mycompany/app/pref/PrefSub;->x:Z

    .line 49
    .line 50
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 51
    .line 52
    const/16 v2, 0xa

    .line 53
    .line 54
    const-string v3, "mUseAudio"

    .line 55
    .line 56
    invoke-static {v2, v1, v3, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p1, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p2, p1}, Lcom/mycompany/app/video/VideoAudio;->b(I)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_1
    const/4 v1, 0x2

    .line 72
    if-ne p2, v1, :cond_2

    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/mycompany/app/video/VideoActivity;->P0(Lcom/mycompany/app/video/VideoActivity;Z)V

    .line 75
    .line 76
    .line 77
    :catch_0
    :cond_2
    :goto_0
    return v0
.end method
