.class Lcom/mycompany/app/quick/TabSubView$20;
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
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$20;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$20;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/quick/TabSubView;->g:Lcom/mycompany/app/quick/TabSubView$TabSubListener;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget-wide v3, v1, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 13
    .line 14
    iget v1, v0, Lcom/mycompany/app/quick/TabSubView;->m:I

    .line 15
    .line 16
    invoke-interface {v2, v1, v3, v4}, Lcom/mycompany/app/quick/TabSubView$TabSubListener;->b(IJ)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabSubView;->l()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
