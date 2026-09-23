.class Lcom/mycompany/app/quick/QuickSearch$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$8;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$8;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickSearch;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    new-instance p2, Lcom/mycompany/app/quick/QuickSearch$8$1;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/mycompany/app/quick/QuickSearch$8$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$8;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
