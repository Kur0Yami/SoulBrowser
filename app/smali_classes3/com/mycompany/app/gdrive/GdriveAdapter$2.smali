.class Lcom/mycompany/app/gdrive/GdriveAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/gdrive/GdriveAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/gdrive/GdriveAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/gdrive/GdriveAdapter$2;->c:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Lcom/mycompany/app/gdrive/GdriveAdapter$GdriveHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/mycompany/app/gdrive/GdriveAdapter$GdriveHolder;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v0, p0, Lcom/mycompany/app/gdrive/GdriveAdapter$2;->c:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/mycompany/app/gdrive/GdriveAdapter;->v(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/gdrive/GdriveAdapter;->e:Lcom/mycompany/app/gdrive/GdriveAdapter$GdriveListener;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/gdrive/GdriveAdapter$GdriveListener;->b(ILcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_1
    return-void
.end method
