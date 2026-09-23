.class Lcom/mycompany/app/video/VideoActivity$75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$75;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$75;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->j4:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->l3:Lcom/mycompany/app/video/VideoAudio;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-object v2, v1, Lcom/mycompany/app/video/VideoAudio;->b:Lcom/mycompany/app/video/VideoAudio$AudioListener;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v3, v1, Lcom/mycompany/app/video/VideoAudio;->h:I

    .line 23
    .line 24
    if-ne v3, p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iput p1, v1, Lcom/mycompany/app/video/VideoAudio;->h:I

    .line 28
    .line 29
    check-cast v2, Lcom/mycompany/app/video/VideoActivity$72;

    .line 30
    .line 31
    iget-object p1, v2, Lcom/mycompany/app/video/VideoActivity$72;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v1, p1}, Lcom/mycompany/app/video/VideoAudio;->b(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, v1, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v2, v1, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 43
    .line 44
    iget v1, v1, Lcom/mycompany/app/video/VideoAudio;->h:I

    .line 45
    .line 46
    invoke-static {v1, p1, v0, v2}, Lcom/mycompany/app/db/book/DbBookSub;->f(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    iget v1, v0, Lcom/mycompany/app/video/VideoActivity;->H3:I

    .line 51
    .line 52
    if-ne v1, p1, :cond_4

    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void

    .line 55
    :cond_4
    iput p1, v0, Lcom/mycompany/app/video/VideoActivity;->H3:I

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {v0, p1}, Lcom/mycompany/app/video/VideoActivity;->A(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->G3:Ljava/lang/String;

    .line 69
    .line 70
    iget v3, v0, Lcom/mycompany/app/video/VideoActivity;->H3:I

    .line 71
    .line 72
    iget v0, v0, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 73
    .line 74
    invoke-static {p1, v1, v2, v3, v0}, Lcom/mycompany/app/db/book/DbBookSub;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
