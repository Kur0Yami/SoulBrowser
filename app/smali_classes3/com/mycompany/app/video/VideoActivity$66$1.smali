.class Lcom/mycompany/app/video/VideoActivity$66$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$66;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$66;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$66$1;->c:Lcom/mycompany/app/video/VideoActivity$66;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$66$1;->c:Lcom/mycompany/app/video/VideoActivity$66;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$66;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->m8()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 12
    .line 13
    iget v2, v0, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget v1, v0, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 22
    .line 23
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 24
    .line 25
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/mycompany/app/pref/PrefSet;->e(Landroid/content/Context;F)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v1, v0, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 31
    .line 32
    iget-boolean v2, v0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget v2, v0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){ele.playbackRate="

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ";}})();"

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 73
    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$29;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$29;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 80
    .line 81
    .line 82
    const-wide/16 v3, 0x64

    .line 83
    .line 84
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method
