.class Lcom/mycompany/app/quick/QuickView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$7;->a:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView$7;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, p3}, Lcom/mycompany/app/quick/QuickView;->k(I)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    invoke-virtual {v0, p3, p2}, Lcom/mycompany/app/quick/QuickAdapter;->U(IZ)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/mycompany/app/quick/QuickAdapter;->d()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 30
    .line 31
    .line 32
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/mycompany/app/quick/QuickView;->a(Lcom/mycompany/app/quick/QuickView;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
