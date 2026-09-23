.class Lcom/mycompany/app/quick/TabSubView$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView$14;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView$14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$14$1;->c:Lcom/mycompany/app/quick/TabSubView$14;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$14$1;->c:Lcom/mycompany/app/quick/TabSubView$14;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/TabSubView$14;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->g:Lcom/mycompany/app/quick/TabSubView$TabSubListener;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/quick/TabSubView;->P:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget v2, v0, Lcom/mycompany/app/quick/TabSubView;->m:I

    .line 19
    .line 20
    invoke-interface {v1, v2}, Lcom/mycompany/app/quick/TabSubView$TabSubListener;->c(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, v0, Lcom/mycompany/app/quick/TabSubView;->P:Z

    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method
