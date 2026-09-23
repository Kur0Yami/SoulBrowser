.class Lcom/mycompany/app/main/MainListView$84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$84;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILcom/mycompany/app/main/MainItem$ChildItem;I)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView$84;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/mycompany/app/main/MainListView;->z()V

    .line 4
    .line 5
    .line 6
    iget-object p3, p3, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p3, p1, p2, v0}, Lcom/mycompany/app/main/MainListListener;->f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
