.class Lcom/mycompany/app/main/MainUtil$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainUtil$18;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainUtil$18;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainUtil$18$1;->c:Lcom/mycompany/app/main/MainUtil$18;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainUtil$18$1;->c:Lcom/mycompany/app/main/MainUtil$18;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainUtil$18;->c:Landroid/widget/EditText;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v3, 0x2e

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, -0x1

    .line 24
    if-ne v3, v4, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/main/MainUtil$18;->c:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, v3

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    if-le v1, v4, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Lcom/mycompany/app/main/MainUtil$18;->c:Landroid/widget/EditText;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    if-nez v3, :cond_3

    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/main/MainUtil$18;->c:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
