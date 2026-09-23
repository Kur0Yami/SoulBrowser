.class Lcom/google/android/material/datepicker/MaterialCalendar$5;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Calendar;

.field public final b:Ljava/util/Calendar;

.field public final synthetic c:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->i(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->a:Ljava/util/Calendar;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->i(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->b:Ljava/util/Calendar;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 8
    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 32
    .line 33
    iget-object v3, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 34
    .line 35
    iget-object v4, v3, Lcom/google/android/material/datepicker/MaterialCalendar;->g:Lcom/google/android/material/datepicker/DateSelector;

    .line 36
    .line 37
    invoke-interface {v4}, Lcom/google/android/material/datepicker/DateSelector;->v()Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v7, 0x0

    .line 46
    :goto_0
    if-ge v7, v5, :cond_6

    .line 47
    .line 48
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    add-int/lit8 v7, v7, 0x1

    .line 53
    .line 54
    check-cast v8, Landroidx/core/util/Pair;

    .line 55
    .line 56
    iget-object v9, v8, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v8, v8, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    .line 59
    .line 60
    if-eqz v9, :cond_5

    .line 61
    .line 62
    if-nez v8, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    check-cast v9, Ljava/lang/Long;

    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v9

    .line 71
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->a:Ljava/util/Calendar;

    .line 72
    .line 73
    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    .line 75
    .line 76
    check-cast v8, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v8

    .line 82
    iget-object v10, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->b:Ljava/util/Calendar;

    .line 83
    .line 84
    invoke-virtual {v10, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 85
    .line 86
    .line 87
    const/4 v8, 0x1

    .line 88
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    iget-object v11, v1, Lcom/google/android/material/datepicker/YearGridAdapter;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 93
    .line 94
    iget-object v11, v11, Lcom/google/android/material/datepicker/MaterialCalendar;->h:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 95
    .line 96
    iget-object v11, v11, Lcom/google/android/material/datepicker/CalendarConstraints;->c:Lcom/google/android/material/datepicker/Month;

    .line 97
    .line 98
    iget v11, v11, Lcom/google/android/material/datepicker/Month;->g:I

    .line 99
    .line 100
    sub-int/2addr v9, v11

    .line 101
    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    iget-object v10, v1, Lcom/google/android/material/datepicker/YearGridAdapter;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 106
    .line 107
    iget-object v10, v10, Lcom/google/android/material/datepicker/MaterialCalendar;->h:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 108
    .line 109
    iget-object v10, v10, Lcom/google/android/material/datepicker/CalendarConstraints;->c:Lcom/google/android/material/datepicker/Month;

    .line 110
    .line 111
    iget v10, v10, Lcom/google/android/material/datepicker/Month;->g:I

    .line 112
    .line 113
    sub-int/2addr v8, v10

    .line 114
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    iget v12, v2, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 123
    .line 124
    div-int/2addr v9, v12

    .line 125
    div-int/2addr v8, v12

    .line 126
    move v12, v9

    .line 127
    :goto_1
    if-gt v12, v8, :cond_5

    .line 128
    .line 129
    iget v13, v2, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 130
    .line 131
    mul-int/2addr v13, v12

    .line 132
    invoke-virtual {v2, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    if-nez v13, :cond_2

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    iget-object v15, v3, Lcom/google/android/material/datepicker/MaterialCalendar;->l:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 144
    .line 145
    iget-object v15, v15, Lcom/google/android/material/datepicker/CalendarStyle;->d:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 146
    .line 147
    iget-object v15, v15, Lcom/google/android/material/datepicker/CalendarItemStyle;->a:Landroid/graphics/Rect;

    .line 148
    .line 149
    iget v15, v15, Landroid/graphics/Rect;->top:I

    .line 150
    .line 151
    add-int/2addr v14, v15

    .line 152
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    iget-object v15, v3, Lcom/google/android/material/datepicker/MaterialCalendar;->l:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 157
    .line 158
    iget-object v15, v15, Lcom/google/android/material/datepicker/CalendarStyle;->d:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 159
    .line 160
    iget-object v15, v15, Lcom/google/android/material/datepicker/CalendarItemStyle;->a:Landroid/graphics/Rect;

    .line 161
    .line 162
    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    .line 163
    .line 164
    sub-int/2addr v13, v15

    .line 165
    if-ne v12, v9, :cond_3

    .line 166
    .line 167
    if-eqz v10, :cond_3

    .line 168
    .line 169
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 174
    .line 175
    .line 176
    move-result v16

    .line 177
    div-int/lit8 v16, v16, 0x2

    .line 178
    .line 179
    add-int v16, v16, v15

    .line 180
    .line 181
    move/from16 v15, v16

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    const/4 v15, 0x0

    .line 185
    :goto_2
    if-ne v12, v8, :cond_4

    .line 186
    .line 187
    if-eqz v11, :cond_4

    .line 188
    .line 189
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 190
    .line 191
    .line 192
    move-result v16

    .line 193
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 194
    .line 195
    .line 196
    move-result v17

    .line 197
    div-int/lit8 v17, v17, 0x2

    .line 198
    .line 199
    add-int v17, v17, v16

    .line 200
    .line 201
    :goto_3
    move/from16 v6, v17

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 205
    .line 206
    .line 207
    move-result v17

    .line 208
    goto :goto_3

    .line 209
    :goto_4
    int-to-float v15, v15

    .line 210
    int-to-float v14, v14

    .line 211
    int-to-float v6, v6

    .line 212
    int-to-float v13, v13

    .line 213
    iget-object v0, v3, Lcom/google/android/material/datepicker/MaterialCalendar;->l:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->h:Landroid/graphics/Paint;

    .line 216
    .line 217
    move-object/from16 v17, p1

    .line 218
    .line 219
    move-object/from16 v22, v0

    .line 220
    .line 221
    move/from16 v20, v6

    .line 222
    .line 223
    move/from16 v21, v13

    .line 224
    .line 225
    move/from16 v19, v14

    .line 226
    .line 227
    move/from16 v18, v15

    .line 228
    .line 229
    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 230
    .line 231
    .line 232
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 233
    .line 234
    move-object/from16 v0, p0

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_5
    move-object/from16 v0, p0

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_6
    :goto_6
    return-void
.end method
