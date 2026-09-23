.class Lcom/mycompany/app/pull/MyPullView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/pull/MyPullView;->setTouchUp(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:F

.field public final synthetic f:Lcom/mycompany/app/pull/MyPullView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyPullView;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView$8;->f:Lcom/mycompany/app/pull/MyPullView;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/pull/MyPullView$8;->c:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView$8;->f:Lcom/mycompany/app/pull/MyPullView;

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/pull/MyPullView$8;->c:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/pull/MyPullView;->b(Lcom/mycompany/app/pull/MyPullView;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
