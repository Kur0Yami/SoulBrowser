.class Lcom/mycompany/app/quick/TabSubView$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$17;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$17;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-object v3, v0, Lcom/mycompany/app/quick/TabSubView;->r0:Ljava/util/List;

    .line 4
    .line 5
    iget-wide v4, v0, Lcom/mycompany/app/quick/TabSubView;->s0:J

    .line 6
    .line 7
    iget v6, v0, Lcom/mycompany/app/quick/TabSubView;->t0:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->r0:Ljava/util/List;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v3, v4, v5}, Lcom/mycompany/app/quick/TabSubView;->a(Lcom/mycompany/app/quick/TabSubView;Ljava/util/List;J)I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebTabAdapter;->b0(Ljava/util/List;Ljava/util/List;JII)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
