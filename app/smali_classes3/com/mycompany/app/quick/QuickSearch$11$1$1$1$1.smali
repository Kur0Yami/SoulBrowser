.class Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1;->c:Lcom/mycompany/app/quick/QuickSearch$11;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 10
    .line 11
    sget v2, Lcom/mycompany/app/quick/QuickSearch;->f0:I

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickSearch;->l()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1;->c:Lcom/mycompany/app/quick/QuickSearch$11;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 21
    .line 22
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
