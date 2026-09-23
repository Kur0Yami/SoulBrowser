.class Lcom/mycompany/app/view/MySelectView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/view/MySelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySelectView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySelectView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySelectView$1;->c:Lcom/mycompany/app/view/MySelectView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySelectView$1;->c:Lcom/mycompany/app/view/MySelectView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MySelectView;->g:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iget-wide v3, v0, Lcom/mycompany/app/view/MySelectView;->i:J

    .line 13
    .line 14
    sub-long/2addr v1, v3

    .line 15
    const-wide/16 v3, 0x1f4

    .line 16
    .line 17
    cmp-long v3, v1, v3

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    iput-boolean v4, v0, Lcom/mycompany/app/view/MySelectView;->g:Z

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lcom/mycompany/app/view/MySelectView;->h:Z

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    iput v1, v0, Lcom/mycompany/app/view/MySelectView;->c:I

    .line 29
    .line 30
    iget v1, v0, Lcom/mycompany/app/view/MySelectView;->f:F

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iput-wide v1, v0, Lcom/mycompany/app/view/MySelectView;->i:J

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v0, v0, Lcom/mycompany/app/view/MySelectView;->k:Ljava/lang/Runnable;

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    long-to-float v1, v1

    .line 52
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 53
    .line 54
    div-float/2addr v1, v2

    .line 55
    iget v2, v0, Lcom/mycompany/app/view/MySelectView;->f:F

    .line 56
    .line 57
    mul-float/2addr v1, v2

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v0, v0, Lcom/mycompany/app/view/MySelectView;->j:Ljava/lang/Runnable;

    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
