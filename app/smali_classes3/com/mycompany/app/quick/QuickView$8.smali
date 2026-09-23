.class Lcom/mycompany/app/quick/QuickView$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$8;->a:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView$8;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iput p2, p1, Lcom/mycompany/app/quick/QuickView;->Q:I

    .line 13
    .line 14
    if-lez p2, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Lcom/mycompany/app/quick/QuickView;->P:Z

    .line 18
    .line 19
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->w0()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p1, Lcom/mycompany/app/quick/QuickView;->P:Z

    .line 27
    .line 28
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->r0()V

    .line 31
    .line 32
    .line 33
    :goto_0
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    iget-boolean p2, p1, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->u()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    return-void
.end method
