.class Lcom/mycompany/app/pull/MyPullView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/pull/MyPullView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/pull/MyPullView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyPullView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView$7;->c:Lcom/mycompany/app/pull/MyPullView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView$7;->c:Lcom/mycompany/app/pull/MyPullView;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/pull/MyPullView;->C:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/pull/MyPullView;->d(Lcom/mycompany/app/pull/MyPullView;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
