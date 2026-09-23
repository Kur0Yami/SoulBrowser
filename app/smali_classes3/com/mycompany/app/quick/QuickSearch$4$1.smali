.class Lcom/mycompany/app/quick/QuickSearch$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$4$1;->c:Lcom/mycompany/app/quick/QuickSearch$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$4$1;->c:Lcom/mycompany/app/quick/QuickSearch$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$4;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickSearch;->b(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$4$1$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$4$1$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$4$1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
