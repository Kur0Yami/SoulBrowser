.class Lcom/mycompany/app/fragment/FragmentTabPath$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/fragment/FragmentTabPath;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentTabPath;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/fragment/FragmentTabPath$2;->c:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/fragment/FragmentTabPath$2;->c:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->f:Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->c:[Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "/"

    .line 11
    .line 12
    if-eqz v2, :cond_6

    .line 13
    .line 14
    array-length v2, v2

    .line 15
    const/4 v4, 0x2

    .line 16
    if-ge v2, v4, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v1, 0x1

    .line 30
    add-int/2addr p1, v1

    .line 31
    iget-object v2, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->c:[Ljava/lang/String;

    .line 32
    .line 33
    array-length v2, v2

    .line 34
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ge p1, v4, :cond_2

    .line 39
    .line 40
    iget-object p1, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->f:Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;

    .line 41
    .line 42
    invoke-interface {p1, v3}, Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;->a(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_0
    if-ge v1, p1, :cond_4

    .line 52
    .line 53
    iget-object v4, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->c:[Ljava/lang/String;

    .line 54
    .line 55
    aget-object v4, v4, v1

    .line 56
    .line 57
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    iget-object p1, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->f:Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;

    .line 84
    .line 85
    invoke-interface {p1, v3}, Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;->a(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->f:Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;

    .line 90
    .line 91
    invoke-interface {v0, p1}, Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    :goto_2
    invoke-interface {v1, v3}, Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
