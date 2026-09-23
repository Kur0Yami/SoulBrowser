.class Lcom/mycompany/app/web/WebVideoFull$85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebVideoFull;->setSeekTouchUp(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$85;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$85;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/mycompany/app/web/WebVideoFull;->n1:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    if-gez v5, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-wide v5, v0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 13
    .line 14
    long-to-float v7, v5

    .line 15
    long-to-float v1, v1

    .line 16
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 17
    .line 18
    div-float/2addr v1, v2

    .line 19
    mul-float/2addr v1, v7

    .line 20
    div-float v2, v1, v2

    .line 21
    .line 22
    float-to-long v7, v1

    .line 23
    cmp-long v1, v7, v5

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-wide v5, v7

    .line 29
    :goto_0
    cmp-long v1, v5, v3

    .line 30
    .line 31
    if-gez v1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-wide v3, v5

    .line 35
    :goto_1
    iput-wide v3, v0, Lcom/mycompany/app/web/WebVideoFull;->g0:J

    .line 36
    .line 37
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->d0:Z

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    :goto_2
    return-void

    .line 47
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "myVidSeekPos("

    .line 50
    .line 51
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ");"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
