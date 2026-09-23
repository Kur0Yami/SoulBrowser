.class Lcom/mycompany/app/view/MySelectView$2;
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
    iput-object p1, p0, Lcom/mycompany/app/view/MySelectView$2;->c:Lcom/mycompany/app/view/MySelectView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySelectView$2;->c:Lcom/mycompany/app/view/MySelectView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MySelectView;->h:Z

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
    if-lez v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/view/MySelectView;->b()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    long-to-float v1, v1

    .line 26
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 27
    .line 28
    div-float/2addr v1, v2

    .line 29
    iget v2, v0, Lcom/mycompany/app/view/MySelectView;->f:F

    .line 30
    .line 31
    mul-float/2addr v1, v2

    .line 32
    sub-float/2addr v2, v1

    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v0, v0, Lcom/mycompany/app/view/MySelectView;->k:Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
