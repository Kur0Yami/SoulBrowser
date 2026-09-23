.class Lcom/mycompany/app/quick/QuickSearch$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$13;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$13$1;->c:Lcom/mycompany/app/quick/QuickSearch$13;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$13$1;->c:Lcom/mycompany/app/quick/QuickSearch$13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$13;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->u:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$13$1$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$13$1$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$13$1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
