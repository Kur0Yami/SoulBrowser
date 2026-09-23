.class Lcom/mycompany/app/view/MyCoverView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/view/MyCoverView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyCoverView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyCoverView$9;->f:Lcom/mycompany/app/view/MyCoverView;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyCoverView$9;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyCoverView$9;->f:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/mycompany/app/view/MyCoverView;->s:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    iput-wide v3, v0, Lcom/mycompany/app/view/MyCoverView;->s:J

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->d()V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyCoverView$9;->c:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
