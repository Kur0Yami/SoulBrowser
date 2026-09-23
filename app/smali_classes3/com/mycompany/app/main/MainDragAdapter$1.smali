.class Lcom/mycompany/app/main/MainDragAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDragAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDragAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDragAdapter$1;->c:Lcom/mycompany/app/main/MainDragAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

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
    instance-of v0, p1, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget v0, p1, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->b:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/mycompany/app/main/MainDragAdapter$1;->c:Lcom/mycompany/app/main/MainDragAdapter;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainDragAdapter;->a(I)Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->e:Lcom/mycompany/app/view/MySwitchView;

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->d:Z

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    xor-int/2addr v2, v3

    .line 38
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->d:Z

    .line 39
    .line 40
    invoke-virtual {p1, v2, v3}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v1, Lcom/mycompany/app/main/MainDragAdapter;->h:Lcom/mycompany/app/main/MainDragAdapter$MainDragListener;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget v1, v0, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->a:I

    .line 48
    .line 49
    iget-boolean v0, v0, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->d:Z

    .line 50
    .line 51
    invoke-interface {p1, v1, v0}, Lcom/mycompany/app/main/MainDragAdapter$MainDragListener;->a(IZ)V

    .line 52
    .line 53
    .line 54
    :cond_4
    :goto_1
    return-void
.end method
