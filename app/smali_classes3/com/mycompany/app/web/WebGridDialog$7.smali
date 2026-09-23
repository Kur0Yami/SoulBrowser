.class Lcom/mycompany/app/web/WebGridDialog$7;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$7;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$7;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/web/WebGridDialog;->a0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebGridAdapter;->B(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->a0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 21
    .line 22
    iget p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_2
    :goto_0
    return v2
.end method
