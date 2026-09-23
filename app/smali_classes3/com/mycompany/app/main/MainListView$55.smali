.class Lcom/mycompany/app/main/MainListView$55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$55;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView$55;->c:Lcom/mycompany/app/main/MainListView;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainListView;->w1:Z

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/main/MainListView;->t:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, v1, Lcom/mycompany/app/main/MainListView;->v1:F

    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->p:Lcom/mycompany/app/view/MyListGroup;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/main/MainListView;->h0(FZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
