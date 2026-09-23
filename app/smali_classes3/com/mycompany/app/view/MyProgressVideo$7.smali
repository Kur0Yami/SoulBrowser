.class Lcom/mycompany/app/view/MyProgressVideo$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/view/MyProgressVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyProgressVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyProgressVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo$7;->c:Lcom/mycompany/app/view/MyProgressVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo$7;->c:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->H:F

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyProgressVideo;->i:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v2, v0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 11
    .line 12
    iget v3, v0, Lcom/mycompany/app/view/MyProgressVideo;->w:F

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v3, v0, Lcom/mycompany/app/view/MyProgressVideo;->w:F

    .line 24
    .line 25
    div-float/2addr v1, v3

    .line 26
    float-to-int v1, v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressVideo;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_0
    if-ne v2, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressVideo;->h()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->k:I

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    if-eq v1, v2, :cond_3

    .line 41
    .line 42
    iget v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyProgressVideo;->f(IZ)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressVideo;->h()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->j:Landroid/content/Context;

    .line 53
    .line 54
    new-instance v2, Lcom/mycompany/app/view/MyProgressVideo$8;

    .line 55
    .line 56
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyProgressVideo$8;-><init>(Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
