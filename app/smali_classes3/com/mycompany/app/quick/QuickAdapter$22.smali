.class Lcom/mycompany/app/quick/QuickAdapter$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/quick/QuickAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter$22;->g:Lcom/mycompany/app/quick/QuickAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickAdapter$22;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/quick/QuickAdapter$22;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter$22;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter$22;->g:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/mycompany/app/quick/QuickAdapter;->G(Ljava/lang/String;)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->u:Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget v4, p0, Lcom/mycompany/app/quick/QuickAdapter$22;->f:I

    .line 22
    .line 23
    if-eq v3, v4, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_3
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2, v4}, Lcom/mycompany/app/quick/QuickAdapter;->Z(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Lcom/mycompany/app/view/MyRoundImage;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
