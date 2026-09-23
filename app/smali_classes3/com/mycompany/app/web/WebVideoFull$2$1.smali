.class Lcom/mycompany/app/web/WebVideoFull$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$2$1;->c:Lcom/mycompany/app/web/WebVideoFull$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$2$1;->c:Lcom/mycompany/app/web/WebVideoFull$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$2;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->P0:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->t:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_3

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_3
    const/4 v4, 0x0

    .line 30
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebVideoFull;->P0:Z

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    new-array v5, v5, [I

    .line 34
    .line 35
    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 36
    .line 37
    .line 38
    aget v1, v5, v4

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    aget v4, v5, v4

    .line 42
    .line 43
    add-int/2addr v2, v1

    .line 44
    add-int/2addr v3, v4

    .line 45
    sget v5, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 46
    .line 47
    sub-int/2addr v1, v5

    .line 48
    sub-int/2addr v4, v5

    .line 49
    add-int/2addr v2, v5

    .line 50
    add-int/2addr v3, v5

    .line 51
    iput v1, v0, Lcom/mycompany/app/web/WebVideoFull;->Q0:I

    .line 52
    .line 53
    iput v4, v0, Lcom/mycompany/app/web/WebVideoFull;->R0:I

    .line 54
    .line 55
    iput v2, v0, Lcom/mycompany/app/web/WebVideoFull;->S0:I

    .line 56
    .line 57
    iput v3, v0, Lcom/mycompany/app/web/WebVideoFull;->T0:I

    .line 58
    .line 59
    return-void
.end method
