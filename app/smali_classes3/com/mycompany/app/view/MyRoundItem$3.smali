.class Lcom/mycompany/app/view/MyRoundItem$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/view/MyRoundItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyRoundItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyRoundItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundItem$3;->c:Lcom/mycompany/app/view/MyRoundItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundItem$3;->c:Lcom/mycompany/app/view/MyRoundItem;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyRoundItem;->t:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyRoundItem;->f:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, v0, Lcom/mycompany/app/view/MyRoundItem;->u:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    const-wide/16 v3, 0x2bc

    .line 20
    .line 21
    cmp-long v3, v1, v3

    .line 22
    .line 23
    if-lez v3, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyRoundItem;->s:Z

    .line 27
    .line 28
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyRoundItem;->t:Z

    .line 29
    .line 30
    iput v1, v0, Lcom/mycompany/app/view/MyRoundItem;->v:I

    .line 31
    .line 32
    iput v1, v0, Lcom/mycompany/app/view/MyRoundItem;->w:I

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->invalidate()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    long-to-float v1, v1

    .line 39
    const v2, 0x3e4ccccd    # 0.2f

    .line 40
    .line 41
    .line 42
    mul-float/2addr v1, v2

    .line 43
    float-to-int v1, v1

    .line 44
    rsub-int v1, v1, 0x8c

    .line 45
    .line 46
    iput v1, v0, Lcom/mycompany/app/view/MyRoundItem;->w:I

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->invalidate()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v0, v0, Lcom/mycompany/app/view/MyRoundItem;->y:Ljava/lang/Runnable;

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method
