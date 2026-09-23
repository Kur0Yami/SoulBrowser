.class Lcom/mycompany/app/dialog/DialogSetPopup$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/drag/DragListView$DropListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetPopup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPopup$5;->a:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup$5;->a:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->j0:Lcom/mycompany/app/main/MainDragAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_1
    if-gez p1, :cond_2

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_2
    const/4 v3, 0x0

    .line 20
    if-gez p2, :cond_4

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_3
    move p2, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    if-le p2, v2, :cond_5

    .line 35
    .line 36
    iget-object p2, v1, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    add-int/lit8 p2, p2, -0x1

    .line 43
    .line 44
    if-ne p2, p1, :cond_5

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_5
    :goto_0
    invoke-virtual {v1, p1}, Lcom/mycompany/app/main/MainDragAdapter;->a(I)Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_6

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_6
    iget-object v4, v1, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget-object p1, v1, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 65
    .line 66
    .line 67
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->j0:Lcom/mycompany/app/main/MainDragAdapter;

    .line 68
    .line 69
    iget-object p2, p1, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    if-nez p2, :cond_7

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_8

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    :goto_1
    if-ge v3, p2, :cond_b

    .line 88
    .line 89
    iget-object v4, p1, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 96
    .line 97
    if-nez v4, :cond_9

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_9
    iget v4, v4, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->a:I

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    add-int/lit8 v4, p2, -0x1

    .line 106
    .line 107
    if-ge v3, v4, :cond_a

    .line 108
    .line 109
    const-string v4, "/"

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_c

    .line 126
    .line 127
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 128
    .line 129
    :cond_c
    :goto_3
    return-void
.end method
