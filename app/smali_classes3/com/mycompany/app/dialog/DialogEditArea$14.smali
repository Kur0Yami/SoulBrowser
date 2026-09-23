.class Lcom/mycompany/app/dialog/DialogEditArea$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$14;->a:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/mycompany/app/dialog/DialogEditArea$14;->a:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 2
    .line 3
    iget-object v0, p4, Lcom/mycompany/app/dialog/DialogEditArea;->i0:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    long-to-int p1, p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainAreaAdapter;->v(I)Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iput-object p3, p2, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p4}, Lcom/mycompany/app/dialog/DialogEditArea;->B(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
