.class Lcom/mycompany/app/main/MenuListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MenuListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MenuListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MenuListAdapter$2;->c:Lcom/mycompany/app/main/MenuListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MenuListAdapter$2;->c:Lcom/mycompany/app/main/MenuListAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/main/MenuListAdapter;->e:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;->a(Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    return p1
.end method
