.class Lcom/mycompany/app/view/MyRoundItem$2;
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
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundItem$2;->c:Lcom/mycompany/app/view/MyRoundItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundItem$2;->c:Lcom/mycompany/app/view/MyRoundItem;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyRoundItem;->s:Z

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
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyRoundItem;->t:Z

    .line 30
    .line 31
    const/16 v1, 0x8c

    .line 32
    .line 33
    iput v1, v0, Lcom/mycompany/app/view/MyRoundItem;->w:I

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->invalidate()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    iput-wide v1, v0, Lcom/mycompany/app/view/MyRoundItem;->u:J

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v0, v0, Lcom/mycompany/app/view/MyRoundItem;->y:Ljava/lang/Runnable;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    long-to-float v1, v1

    .line 55
    const v2, 0x3e4ccccd    # 0.2f

    .line 56
    .line 57
    .line 58
    mul-float/2addr v1, v2

    .line 59
    float-to-int v1, v1

    .line 60
    iput v1, v0, Lcom/mycompany/app/view/MyRoundItem;->w:I

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->invalidate()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v0, v0, Lcom/mycompany/app/view/MyRoundItem;->x:Ljava/lang/Runnable;

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method
