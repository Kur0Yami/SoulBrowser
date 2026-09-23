.class public final synthetic Lorg/jsoup/parser/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/parser/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/parser/e;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 10
    .line 11
    sget v0, Lorg/jsoup/parser/Tag;->RcData:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 18
    .line 19
    sget v0, Lorg/jsoup/parser/Tag;->PreserveWhitespace:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 26
    .line 27
    sget v0, Lorg/jsoup/parser/Tag;->Void:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_2
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 34
    .line 35
    sget v0, Lorg/jsoup/parser/Tag;->InlineContainer:I

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_3
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_4
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 48
    .line 49
    sget v0, Lorg/jsoup/parser/Tag;->Data:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_5
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_6
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 62
    .line 63
    sget v0, Lorg/jsoup/parser/Tag;->Block:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_7
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 70
    .line 71
    sget v0, Lorg/jsoup/parser/Tag;->Block:I

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_8
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_9
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 84
    .line 85
    sget v0, Lorg/jsoup/parser/Tag;->Block:I

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_a
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 92
    .line 93
    sget v0, Lorg/jsoup/parser/Tag;->FormSubmittable:I

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_b
    sget-object v0, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 100
    .line 101
    sget v0, Lorg/jsoup/parser/Tag;->Data:I

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 104
    .line 105
    .line 106
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/e;->c:I

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
