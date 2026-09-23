.class Lcom/mycompany/app/quick/QuickSearch$11$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$11$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$11$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1;->c:Lcom/mycompany/app/quick/QuickSearch$11;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/quick/QuickSearch;->e(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$11$1$1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
