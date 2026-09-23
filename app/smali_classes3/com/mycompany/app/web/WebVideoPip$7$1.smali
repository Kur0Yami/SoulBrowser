.class Lcom/mycompany/app/web/WebVideoPip$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoPip$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$7$1;->c:Lcom/mycompany/app/web/WebVideoPip$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$7$1;->c:Lcom/mycompany/app/web/WebVideoPip$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip$7;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 4
    .line 5
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->m8()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget v1, v0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "(function(){if(window.sbRate)sbRate("

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ");})();"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebVideoPip$7$1$1;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoPip$7$1$1;-><init>(Lcom/mycompany/app/web/WebVideoPip$7$1;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v2, 0x64

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    return-void
.end method
