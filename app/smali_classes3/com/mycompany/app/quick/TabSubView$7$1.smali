.class Lcom/mycompany/app/quick/TabSubView$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$7$1;->c:Lcom/mycompany/app/quick/TabSubView$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$7$1;->c:Lcom/mycompany/app/quick/TabSubView$7;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView$7;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/quick/TabSubView;->n:Ljava/util/List;

    .line 6
    .line 7
    iget-wide v3, v1, Lcom/mycompany/app/quick/TabSubView;->o:J

    .line 8
    .line 9
    iget v5, v1, Lcom/mycompany/app/quick/TabSubView;->p:I

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v4}, Lcom/mycompany/app/quick/TabSubView;->a(Lcom/mycompany/app/quick/TabSubView;Ljava/util/List;J)I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/quick/TabSubView;->d(Lcom/mycompany/app/quick/TabSubView;Ljava/util/List;JII)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
