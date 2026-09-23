.class Lcom/mycompany/app/video/VideoActivity$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$37;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity$37;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, v1, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, v1, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){ele.loop="

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ";}})();"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static {v2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$37$1;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$37$1;-><init>(Lcom/mycompany/app/video/VideoActivity$37;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v2, 0x64

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method
